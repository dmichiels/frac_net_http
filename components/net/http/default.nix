{ stdenv, openssl
  , buildFractalideComponent
  , genName, upkeepers
  , net_address
  , net_request
  , net_response
  , ...}:

buildFractalideComponent rec {
  name = genName ./.;
  src = ./.;
  contracts = [ net_address net_request net_response ];
  buildInputs = [ openssl ];
  depsSha256 = "0dzs1ns9r649isfhf3rf039hazqvqxjkdv19s945w6xd34y0aapz";

  meta = with stdenv.lib; {
    description = "Component: net http";
    homepage = https://github.com/fractalide/fractalide/tree/master/components/maths/boolean/nand;
    license = with licenses; [ mpl20 ];
    maintainers = with upkeepers; [ dmichiels sjmackenzie];
  };
}
