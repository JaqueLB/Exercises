package br.com.grupouninter.aula5.respondedata;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DataActivity extends AppCompatActivity {
    TextView txtDataAtual;
    Button btnRetornaData;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_data);

        txtDataAtual = (TextView) findViewById(R.id.txtDataAtual);
        btnRetornaData = (Button) findViewById(R.id.btnRetornaData);

        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        String data = sdf.format(new Date(System.currentTimeMillis()));
        txtDataAtual.setText(data);

        btnRetornaData.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Uri retorno = Uri.parse(txtDataAtual.getText().toString());
                Intent intent = new Intent();
                intent.setData(retorno);
                setResult(RESULT_OK, intent);
                finish();
            }
        });
    }
}
