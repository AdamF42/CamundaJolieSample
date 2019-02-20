include "twiceInterface.iol"
include "console.iol"


inputPort TwiceService {
  Location: "socket://jolie:8000"
  Protocol: soap {
    .wsdl = "myWsdl.wsdl";
    .wsdl.port = "TwiceServiceServicePort"
  }
  Interfaces: TwiceInterface
}

main
{
  twice( request )( response ) {
    response.c = request.a*2;
    response.d = request.b*2
  }
}
