package com.example.spendsmart

import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

class ExpenseActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_expense)

        val amount = findViewById<EditText>(R.id.etAmount)
        val description = findViewById<EditText>(R.id.etDescription)
        val btnSave = findViewById<Button>(R.id.btnSaveExpense)

        btnSave.setOnClickListener {
            val amt = amount.text.toString().trim()
            val desc = description.text.toString().trim()
            Toast.makeText(this, "Expense '$desc' of R$amt recorded", Toast.LENGTH_SHORT).show()
        }
    }
}

activity_expense.xml:

<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent" android:layout_height="match_parent"
    android:orientation="vertical" android:padding="24dp">

    <EditText android:id="@+id/etAmount" android:layout_width="match_parent"
        android:layout_height="wrap_content" android:hint="Amount" android:inputType="number"/>

    <EditText android:id="@+id/etDescription" android:layout_width="match_parent"
        android:layout_height="wrap_content" android:hint="Description"/>

    <Button android:id="@+id/btnSaveExpense" android:layout_width="match_parent"
        android:layout_height="wrap_content" android:text="Save Expense"/>
</LinearLayout>
