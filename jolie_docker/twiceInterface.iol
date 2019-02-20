type Request: void {
  .a: int
  .b: int
}

type Response: void {
  .c: int
  .d: int
}


interface TwiceInterface {
  RequestResponse: twice( Request )( Response )
}
