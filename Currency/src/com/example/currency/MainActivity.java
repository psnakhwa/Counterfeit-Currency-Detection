package com.example.currency;

import android.support.v7.app.ActionBarActivity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends ActionBarActivity {

	TextView tv1,tv2,tv3,tv4;
	Button bt1;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		tv1=(TextView)findViewById(R.id.tv1);
		tv2=(TextView)findViewById(R.id.tv2);
		tv3=(TextView)findViewById(R.id.tv3);
		tv4=(TextView)findViewById(R.id.tv4);
		
		tv1.setTextColor(Color.WHITE);
		tv2.setTextColor(Color.WHITE);
		tv3.setTextColor(Color.WHITE);
		tv4.setTextColor(Color.WHITE);
		
		bt1=(Button)findViewById(R.id.bt1);
		
		bt1.setOnClickListener(new OnClickListener() {
			
			public void onClick(View v) {
				Intent i = new Intent(MainActivity.this, A111.class);
				startActivity(i);
				finish();
			}
		});
		
		
	}


	
}
