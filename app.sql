classDiagram
    class Usuario {
        -String matricula
        -String nombre
        -String documentoIdentificacion
        +consultarFacturas()
        +realizarPago()
        +consultarHistorialPagos()
    }

    class Factura {
        -String numeroFactura
        -Date mesFacturacion
        -double montoPagar
        -double consumo
        -boolean pagada
        +generarPDF()
        +obtenerHistorialConsumo()
    }

    class Pago {
        -String idTransaccion
        -Date fechaPago
        -double monto
        -String estado
        -String metodoPago
        +procesarPago()
        +generarConfirmacion()
    }

    class PagoTarjeta {
        -String numeroTarjeta
        -String titular
        -Date fechaVencimiento
        -String codigoSeguridad
        -String tipoTarjeta
        +validarDatosTarjeta()
    }

    class PagoPSE {
        -String banco
        -String idSesionBancaria
        +redirigirBanco()
        +verificarEstadoTransaccion()
    }

    class Notificacion {
        -String idNotificacion
        -String mensaje
        -Date fecha
        -String tipo
        +enviarNotificacion()
        +marcarComoLeida()
    }

    Usuario "1" --> "*" Factura : tiene
    Usuario "1" --> "*" Pago : realiza
    Usuario "1" --> "0..*" Notificacion : recibe
    Factura "1" --> "*" Pago : genera
    Pago <|-- PagoTarjeta
    Pago <|-- PagoPSE
    Pago "1" --> "0..1" Notificacion : genera