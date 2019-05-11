/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import crud.Create;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import model.MSuplier;

/**
 * FXML Controller class
 *
 * @author TRISNA NURDIANA
 */
public class SuplierController implements Initializable {

    @FXML
    private TextField TFNama;
    @FXML
    private TextField TFKontak;
    @FXML
    private TextArea TAAlamat;
    @FXML
    private Button BTambah;
    Create create = new Create();
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    @FXML
    private void actionTambah(ActionEvent event)
    {
        MSuplier m = new MSuplier();
        m.setNama(TFNama.getText());
        m.setAlamat(TAAlamat.getText());
        m.setKontak(TFKontak.getText());
        create.insertSuplier(m);
    }
}
