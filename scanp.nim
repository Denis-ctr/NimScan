import algorithm, strutils, os

let numGiris = paramCount()

proc usage() =
  echo """
  #############################################

                     NimScan
  ---------------------------------------------

    for usage just type:

    ./scanp.nim {ip} {start port} {end port}

  #############################################
  """

proc main() = 
  
  if numGiris > 0:

    var targetIp: string = paramStr(1)
    let startport = paramStr(2)
    let endport = paramStr(3)

    let startportINT = parseInt(startport)
    let endportINT = parseInt(endport)

    if startportINT >= endportINT:
      echo "[!] error: start port cannot be higher than end port"
      echo ""
      usage()

    else:
      echo ""
      echo "Nim Port Scanner"
      echo "================"
      for Pnum in startportINT .. endportINT:
        portscan(Pnum, targetIp)

  else:
    write(stdout,"TargetIP: ")
    let targetIP = readLine(stdin)
    write(stdout,"FirstPort: ")
    let startport = readLine(stdin)
    write(stdout,"Endport: ")
    let endport = readLine(stdin)

    let startportINT = parseInt(startport)
    let endportINT = parseInt(endport)

    echo ""
    echo "Nim Port Scanner"
    echo "================"

    for Pnum in startportINT .. endportINT:
      portscan(Pnum,targetIp)

main()
