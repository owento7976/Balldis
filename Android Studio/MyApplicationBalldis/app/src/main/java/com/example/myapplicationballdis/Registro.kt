package com.example.myapplicationballdis

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.ui.AppBarConfiguration
import com.example.myapplicationballdis.databinding.ActivityRegistroBinding

class Registro : AppCompatActivity() {

    private var appBarConfiguration: AppBarConfiguration?
        get() = null
        set(value) = TODO()
    private lateinit var binding: ActivityRegistroBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityRegistroBinding.inflate(layoutInflater)
        setContentView(binding.root)

        val myButton: Button = findViewById(R.id.Button_Registrar)


        myButton.setOnClickListener {

            val intent = Intent(this, MainActivity::class.java)
            startActivity(intent)

        }
    }
}

