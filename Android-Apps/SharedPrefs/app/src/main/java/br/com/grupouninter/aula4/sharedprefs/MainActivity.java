package br.com.grupouninter.aula4.sharedprefs;

import android.content.SharedPreferences;
import android.graphics.Color;
import android.support.constraint.ConstraintLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;

public class MainActivity extends AppCompatActivity {
    Button btnAzul;
    Button btnVermelho;
    Button btnVerde;
    Button btnAmarelo;
    Button btnCyan;
    Button btnLaranja;
    Button btnGravar;
    ConstraintLayout layout;
    String cor = "#ffffff";
    EditText edTexto;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnAzul = (Button)findViewById(R.id.btnAzul);
        btnVermelho = (Button)findViewById(R.id.btnVermelho);
        btnVerde = (Button)findViewById(R.id.btnVerde);
        btnAmarelo = (Button)findViewById(R.id.btnAmarelo);
        btnCyan = (Button)findViewById(R.id.btnCyan);
        btnLaranja = (Button)findViewById(R.id.btnLaranja);
        layout = (ConstraintLayout)findViewById(R.id.relativeLayout);
        btnGravar = (Button)findViewById(R.id.btnGravar);
        edTexto = (EditText)findViewById(R.id.edTexto);

        btnAzul.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                cor = "#FF15279A";
                layout.setBackgroundColor(Color.parseColor("#FF15279A"));
            }
        });

        btnVermelho.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                cor = "#ff0011";
                layout.setBackgroundColor(Color.parseColor("#ff0011"));
            }
        });

        btnVerde.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                cor = "#37ff00";
                layout.setBackgroundColor(Color.parseColor("#37ff00"));
            }
        });

        btnAmarelo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                cor = "#ffe100";
                layout.setBackgroundColor(Color.parseColor("#ffe100"));
            }
        });

        btnCyan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                cor = "#00fff7";
                layout.setBackgroundColor(Color.parseColor("#00fff7"));
            }
        });

        btnLaranja.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                cor = "#ff8000";
                layout.setBackgroundColor(Color.parseColor("#ff8000"));
            }
        });

        btnGravar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                SharedPreferences prefs = getPreferences(MODE_PRIVATE);
                SharedPreferences.Editor editor =  prefs.edit();
                editor.putString("nome", edTexto.getText().toString());
                editor.putString("cor", cor);
                editor.apply();
            }
        });

        carregarPrefs();
    }

    public void carregarPrefs(){
        SharedPreferences prefs = getPreferences(MODE_PRIVATE);
        edTexto = (EditText) findViewById(R.id.edTexto);
        edTexto.setText(prefs.getString("nome",""));
        cor = prefs.getString("cor", "#FFFFFF");
        layout = (ConstraintLayout) findViewById(R.id.relativeLayout);
        layout.setBackgroundColor(Color.parseColor(cor));
    }
}
