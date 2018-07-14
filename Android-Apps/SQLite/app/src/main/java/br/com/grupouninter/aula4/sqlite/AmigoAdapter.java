package br.com.grupouninter.aula4.sqlite;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.List;

/**
 * Created by jaqueline on 20/08/17.
 */

public class AmigoAdapter extends BaseAdapter {
    private List<Amigo> amigos;
    Context context = null;
    private LayoutInflater inflater;

    public AmigoAdapter(Context context, List<Amigo> amigos) {
        this.amigos = amigos;
        this.inflater = LayoutInflater.from(context);
        this.context = context;
    }

    @Override
    public int getCount() {
        return this.amigos.size();
    }

    @Override
    public Object getItem(int i) {
        return this.amigos.get(i);
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        final Amigo amigo = (Amigo)getItem(i);

        if (view == null) {
            view = inflater.inflate(R.layout.amigo_layout, null);
        }
        TextView idAmigo = (TextView) view.findViewById(R.id.txtIdAmigo);
        TextView nomeAmigo = (TextView) view.findViewById(R.id.txtNomeAmigo);
        TextView telefoneAmigo = (TextView) view.findViewById(R.id.txtTelefoneAmigo);
        TextView emailAmigo = (TextView) view.findViewById(R.id.txtEmailAmigo);

        idAmigo.setText(amigo.getId());
        nomeAmigo.setText(amigo.getNome());
        telefoneAmigo.setText(amigo.getTelefone());
        emailAmigo.setText(amigo.getEmail());

        return view;
    }
}
