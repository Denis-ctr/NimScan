import net

proc portscan*(Pnum: int, targetIP: string) =
  var
    a = 0
    client = newSocket()

  try:
    client.connect(targetIP,Port(Pnum),10)
    a = 1
  except OSError as e:
    discard e
  except TimeoutError as TE:
    discard TE
  finally:
    if a == 1:
      echo "Port open: ",Pnum
    client.close()
