package com.example.currency;

import android.support.v7.app.ActionBarActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class A111 extends ActionBarActivity {

	Button b1,b2,b3;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_a111);
		
		b1=(Button)findViewById(R.id.b1); 
		b2=(Button)findViewById(R.id.b2);
		b3=(Button)findViewById(R.id.b3);
		
		b1.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				
			Intent ii = new Intent(A111.this, Check.class);
			startActivity(ii);
			}
		});
		
		b2.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Intent iii = new Intent(A111.this, Information.class);
				startActivity(iii);
				
			}
		});
		
		b3.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View arg0) {
				finish();
				
			}
		});
		
		
	}

}
