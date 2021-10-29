//
//  ViewController.swift
//  Edicion
//
//  Created by Alumno on 10/28/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaContacto") as! CeldaContactoController
        
        celda.lblNombre.text = contactos[indexPath.row].nombre
        
        
       return celda
    }
    

    
    
    

    @IBOutlet weak var tvContactos: UITableView!
    var contactos: [Contacto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactos.append(Contacto(nombre: "Jose", celular: "123423233", correo: "jose@correo.com"))
        contactos.append(Contacto(nombre: "Juan", celular: "123445233", correo: "juan@correo.com"))
        contactos.append(Contacto(nombre: "Manuel", celular: "123423223", correo: "manuel@correo.com"))
    }


}


