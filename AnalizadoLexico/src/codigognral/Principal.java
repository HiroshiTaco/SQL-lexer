/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigognral;

import java.io.File;

/**
 *
 * @author Okta_senpai
 */
public class Principal {
    public static void main(String[] args) {
        String ruta = "C:/Users/Okta_senpai/Documents/NetBeansProjects/AnalizadoLexico/src/codigognral/Lexer.flex";
        generarLexer(ruta);
    }
    public static void generarLexer(String ruta){
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
    }
}
