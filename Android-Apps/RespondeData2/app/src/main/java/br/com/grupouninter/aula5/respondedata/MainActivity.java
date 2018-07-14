package br.com.grupouninter.aula5.respondedata;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    TextView txtData;
    Button btnData;

    static final int BUSCA_DATA = 1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        txtData = (TextView) findViewById(R.id.txtData);
        btnData = (Button) findViewById(R.id.btnData);

        btnData.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //Intent intent = new Intent(view.getContext(), DataActivity.class);
                Intent intent = new Intent("br.com.grupouninter.aula5.respondedata.RETORNADATA");
                if (intent.resolveActivity(getPackageManager()) != null) {
                    startActivityForResult(intent, BUSCA_DATA);
                } else {
                    Toast.makeText(view.getContext(), "não achei", Toast.LENGTH_LONG).show();
                }
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == BUSCA_DATA && resultCode == RESULT_OK) {
            txtData.setText(Uri.decode(data.getDataString()));
        }
    }
}
