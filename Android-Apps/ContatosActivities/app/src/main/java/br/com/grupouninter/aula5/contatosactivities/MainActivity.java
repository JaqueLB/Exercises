package br.com.grupouninter.aula5.contatosactivities;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    TextView contatos;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        contatos = (TextView) findViewById(R.id.contatos);
        buscaContato();
    }

    public void buscaContato() {
        String listaContatos = "";
        Uri CONTENT_URI = ContactsContract.Contacts.CONTENT_URI;
        String _ID = ContactsContract.Contacts._ID;
        String DISPLAY_NAME = ContactsContract.Contacts.DISPLAY_NAME;
        String HAS_PHONE_NUMBER = ContactsContract.Contacts.HAS_PHONE_NUMBER;
        Uri PhoneCONTENT_URI = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
        String PhoneCONTACT_ID = ContactsContract.CommonDataKinds.Phone.CONTACT_ID;
        String NUMBER = ContactsContract.CommonDataKinds.Phone.NUMBER;
        Uri EmailCONTENT_URI = ContactsContract.CommonDataKinds.Email.CONTENT_URI;
        String EmailCONTACT_ID = ContactsContract.CommonDataKinds.Email.CONTACT_ID;
        String DATA = ContactsContract.CommonDataKinds.Email.DATA;

        ContentResolver contentResolver = getContentResolver();
        Cursor cursor = contentResolver.query(CONTENT_URI, null, null, null, null);

        if (cursor.getCount() > 0) {
            while (cursor.moveToNext()) {
                String id = cursor.getString(cursor.getColumnIndex(_ID));
                String nome = cursor.getString((cursor.getColumnIndex(DISPLAY_NAME)));
                int possuiTelefone = Integer.parseInt(cursor.getString(cursor.getColumnIndex(HAS_PHONE_NUMBER)));

                if (possuiTelefone > 0) {
                    listaContatos += "\nNome: " + nome;
                    Cursor cursorTelefone = contentResolver.query(PhoneCONTENT_URI, null, PhoneCONTACT_ID + " = ?", new String[]{id}, null);

                    while (cursorTelefone.moveToNext()) {
                        listaContatos += "\nTelefone: " + cursorTelefone.getString(cursorTelefone.getColumnIndex(NUMBER));
                    }

                    cursorTelefone.close();

                    Cursor cursorEmail = contentResolver.query(EmailCONTENT_URI, null, EmailCONTACT_ID + " = ?", new String[]{id}, null);

                    while (cursorEmail.moveToNext()) {
                        listaContatos += "\nEmail: " + cursorEmail.getString(cursorEmail.getColumnIndex(DATA));
                    }

                    cursorEmail.close();
                }
            }
        }
        contatos.setText(listaContatos);
    }
}
