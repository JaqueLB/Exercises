package br.com.grupouninter.activitylifecycle.acitivitylifecicle;

import android.app.Activity;
import android.os.Bundle;

/**
 * Created by jaqueline on 20/08/17.
 */

public class SegundaActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_segunda);
    }
}
