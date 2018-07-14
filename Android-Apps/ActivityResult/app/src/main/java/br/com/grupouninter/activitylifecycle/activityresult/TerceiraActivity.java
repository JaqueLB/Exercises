package br.com.grupouninter.activitylifecycle.activityresult;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class TerceiraActivity extends AppCompatActivity {
    TextView valorParametro;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_terceira);
        valorParametro = (TextView)findViewById(R.id.valorParametro);

        // intent que gerou nossa activity
        Intent intent = getIntent();

        if (intent.hasExtra("retorno") && null != intent.getStringExtra("retorno")) {
            valorParametro.setText(intent.getStringExtra("retorno"));
        } else if (intent.hasExtra("cliente") && null != intent.getSerializableExtra("cliente")) {
            Cliente cliente = (Cliente)intent.getSerializableExtra("cliente");
            valorParametro.setText("Cliente informado: " + cliente.getNome() + " - " + cliente.getIdade() + " anos.");
        }
    }
}
