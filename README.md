plantilla de correo electrónico le permite escribir y crear de forma rápida y sencilla campañas de correo, ya que lo único que tiene que hacer es reemplazar imágenes, textos, fuentes y otros elementos del correo

Todos los clientes renderizan de manera diferente el código de nuestros correos.

Es recomendable probar los correos en diferentes clientes y asegurarnos que se vea como queremos. Si existen casos en los que no sucede, tenemos la opción de utilizar código condicional que puede ayudarnos a modificar la apariencia para clientes específicos como Outlook, que suele tener diferencias respecto a los otros.

La manera de incluir código condicional en tu email es mediante el uso de condiciones “IF”.

Agregando un bloque de código como el siguiente estaremos haciendo que solo Outlook reconozca lo que especificamos ahí, mso significa Microsoft Office:

<!--[if mso]>
    <table><tr><td>
        /* Aquí van los elementos lo que queremos diferenciar solo para Outlook */
    </td></tr></table>
<![endif]-->
<!--[if mso]>
    <style>
        .className {
            /* Aquí van los estilos que queremos diferenciar solo para Outlook */
        }
    </style>
<![endif]-->
Estas son las diferentes condiciones para las versiones de Outlook:

Todas las versiones <!–[if mso]> código <![endif]–>
Outlook 2000 <!–[if mso 9]> código <![endif]–>
Outlook 2002 <!–[if mso 10]> código <![endif]–>
Outlook 2003 <!–[if mso 11]> código <![endif]–>
Outlook 2007 <!–[if mso 12]> código <![endif]–>
Outlook 2010 <!–[if mso 14]> código <![endif]–>
Outlook 2013 <!–[if mso 15]> código <![endif]–>
Outlook 2016 <!–[if mso 16]> código <![endif]–>

También recordemos que hay elementos que no son soportados por todos los clientes, es recomendable revisar casos puntuales en sitios como: https://caniuse.com/

Puedes hacer envíos de prueba en sitios como https://putsmail.com/ para probar cómo funciona en diferentes clientes.



























































































































