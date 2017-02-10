//
//  DatosTableViewController.swift
//  Ciclo de vida Aplicacion iOS
//
//  Created by Alumno on 9/02/17.
//  Copyright © 2017 JorgeLimo. All rights reserved.
//

import UIKit

class DatosTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Capturo el click que se le hace en la celdas del tableView
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let seccion = indexPath.section
        let fila = indexPath.row
        
        var alertController:UIAlertController
        
        if  seccion == 0 {
            
            switch fila {
            case 0:
                alertController = UIAlertController(title: "Alerta", message: "Alerta Simple", preferredStyle: UIAlertControllerStyle.alert)
                self.present(alertController,animated : true,completion:{})
                
            case 1:
                
                alertController = UIAlertController(title: "Alerta", message: "Alerta con boton Ok", preferredStyle: UIAlertControllerStyle.alert)
               
                let accion = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Presiono OK")
                })
                
                alertController.addAction(accion)
                self.present(alertController, animated: true, completion: {})
                
            case 2:
                
                
                alertController = UIAlertController(title: "Alerta", message: "Alerta con acciones", preferredStyle: UIAlertControllerStyle.alert)
                
                let accionAceptar = UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Presiono aceptar")
                })
                
                let accioncancelar = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler: { (action) in
                    print("Presiono Cancelar")
                })
                
                alertController.addAction(accionAceptar)
                alertController.addAction(accioncancelar)
                self.present(alertController, animated: true, completion: {
                    print("Presiono la alerta")
                })
            default:
                print("Con texto")
            }
            
        }else{
            
            switch fila {
            case 0:
                print("Simple")
            case 1:
                print("Con Acciones")
            default:
                print("Con boton cancelar")
            }
            
            
        }
        
        
    }

    // MARK: - Table view data source
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    */
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
