package com.example.currency;

import android.support.v7.app.ActionBarActivity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class Check extends ActionBarActivity {

	TextView tv6,tv7;
	Button but1, but2, but3;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_check);
		
		but1=(Button)findViewById(R.id.but1);
		but2=(Button)findViewById(R.id.but2);
		but3=(Button)findViewById(R.id.but3);
		tv6=(TextView)findViewById(R.id.tv6);
		tv7=(TextView)findViewById(R.id.tv9);
		
		but1.setOnClickListener(new OnClickListener() {
			
			public void onClick(View v) {
				Intent i6 = new Intent(Check.this,Pic100.class);
			    startActivity(i6);
			}
		});
		
		but2.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Intent i7 = new Intent(Check.this,Pic500.class);
			    startActivity(i7);
			}
		});
		
		but3.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Intent i8 = new Intent(Check.this,Pic1000.class);
			    startActivity(i8);
				
			}
		});
		
		tv6.setTextColor(Color.RED);
		tv7.setTextColor(Color.RED);
		
		
		
	}

	
}
