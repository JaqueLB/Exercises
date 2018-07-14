package br.com.grupouninter.activitylifecycle.activityresult;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    TextView resultado;
    Button btnOpcao;
    Button btnArgumento;
    Button btnEnviaPojo;
    static int ACAO_BUSCA_PREFERENCIA_USER = 1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // ligando btnOpcao à representação do xml
        btnOpcao = (Button)findViewById(R.id.btnOpcao);
        // redefinindo o listener
        btnOpcao.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(view.getContext(), SegundaActivity.class);
                startActivityForResult(intent, ACAO_BUSCA_PREFERENCIA_USER);
            }
        });

        btnArgumento = (Button) findViewById(R.id.btnArgumento);
        btnArgumento.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(view.getContext(), TerceiraActivity.class);
                intent.putExtra("retorno", "SEU ARGUMENTO CHEGOU!");
                startActivity(intent);
            }
        });

        btnEnviaPojo = (Button)findViewById(R.id.btnEnviaPojo);
        btnEnviaPojo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Cliente cliente = new Cliente();
                cliente.setNome("Jaqueline");
                cliente.setEndereco("Rua teste, 123, Bairro teste - Cidade - SP");
                cliente.setIdade(24);

                Intent intent = new Intent(view.getContext(), TerceiraActivity.class);
                intent.putExtra("cliente", cliente);
                startActivity(intent);
            }
        });
    }

    @Override
    protected  void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == ACAO_BUSCA_PREFERENCIA_USER) {
            if (resultCode == RESULT_OK) {
                resultado = (TextView)findViewById(R.id.resultado);
                resultado.setText(data.getStringExtra("retorno"));
            }
        }
    }
}
