package br.com.grupouninter.aula4.sqlite;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class AmigoActivity extends AppCompatActivity {
    TextView txtID;
    EditText edtNome;
    EditText edtTel;
    EditText edtEmail;
    Button btnCancelar;
    Button btnGravar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_amigo);
        btnCancelar = (Button) findViewById(R.id.btnCancelar);
        btnGravar = (Button) findViewById(R.id.btnGravar);

        btnCancelar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });

        btnGravar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                edtNome = (EditText) findViewById(R.id.edtNome);
                edtTel = (EditText) findViewById(R.id.edtTel);
                edtEmail = (EditText) findViewById(R.id.edtEmail);

                Amigo amigo = new Amigo();
                amigo.setNome(edtNome.getText().toString());
                amigo.setTelefone(edtTel.getText().toString());
                amigo.setEmail(edtEmail.getText().toString());

                DBHelper db = new DBHelper(view.getContext());
                db.inserir(amigo);
                finish();
            }
        });
    }
}
