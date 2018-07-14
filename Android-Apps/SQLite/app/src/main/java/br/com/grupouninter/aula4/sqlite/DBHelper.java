package br.com.grupouninter.aula4.sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;

import java.util.ArrayList;

/**
 * Created by jaqueline on 20/08/17.
 */

public class DBHelper extends SQLiteOpenHelper {
    private static final String NOME_BANCO_DADOS = "CadastroAmigos";
    private static final int VERSAO_BANCO_DADOS = 1;

    public DBHelper(Context context) {
        super(context, NOME_BANCO_DADOS, null, VERSAO_BANCO_DADOS);
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        String tabela_amigos = "CREATE TABLE amigos(" +
                "id INTEGER PRIMARY KEY autoincrement," +
                "nome TEXT," +
                "telefone TEXT," +
                "email TEXT" +
                ")";
        sqLiteDatabase.execSQL(tabela_amigos);

    }

    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {

    }

    public void inserir(Amigo amigo) {
        SQLiteDatabase db = this.getWritableDatabase();
        SQLiteStatement stmt = db.compileStatement("INSERT INTO amigos (nome, telefone, email) " + "VALUES (?,?,?)");
        stmt.bindString(1, amigo.getNome());
        stmt.bindString(2, amigo.getTelefone());
        stmt.bindString(2, amigo.getEmail());
        stmt.execute();
        stmt.close();
        db.close();
    }

    public void atualizar(Amigo amigo) {
        SQLiteDatabase db = this.getWritableDatabase();
        SQLiteStatement stmt = db.compileStatement("UPDATE amigos SET nome=?, telefone=?, email=? " + "WHERE id = ?");
        stmt.bindString(1, amigo.getNome());
        stmt.bindString(2, amigo.getTelefone());
        stmt.bindString(3, amigo.getEmail());
        stmt.bindLong(4, amigo.getId());
        stmt.execute();
        stmt.close();
        db.close();
    }

    public void excluir(int id) {
        SQLiteDatabase db = this.getWritableDatabase();
        SQLiteStatement stmt = db.compileStatement("DELETE FROM amigos WHERE id = ?");
        stmt.bindLong(1,id);
        stmt.execute();
        stmt.close();
        db.close();
    }

    public Amigo retornarAmigo(int id) {
        SQLiteDatabase db = this.getWritableDatabase();
        String query = "SELECT id, nome, telefone, email FROM amigos WHERE id = ?";
        Cursor cursor = db.rawQuery(query, new String[] {String.valueOf(id)});
        cursor.moveToFirst();
        Amigo amigo = new Amigo();
        amigo.setId(cursor.getInt(0));
        amigo.setNome(cursor.getString(1));
        amigo.setTelefone(cursor.getString(2));
        amigo.setEmail(cursor.getString(3));
        db.close();

        return amigo;
    }

    public ArrayList<Amigo> listar() {
        ArrayList amigos = new ArrayList<Amigo>();
        SQLiteDatabase db = this.getWritableDatabase();
        String query = "SELECT id, nome, telefone, email FROM amigos ORDER BY nome";
        Cursor cursor = db.rawQuery(query, null);

        while (cursor.moveToNext()) {
            Amigo amigo = new Amigo();
            amigo.setId(cursor.getInt(0));
            amigo.setNome(cursor.getString(1));
            amigo.setTelefone(cursor.getString(2));
            amigo.setEmail(cursor.getString(3));
            amigos.add(amigo);
        }

        return amigos;
    }
}
