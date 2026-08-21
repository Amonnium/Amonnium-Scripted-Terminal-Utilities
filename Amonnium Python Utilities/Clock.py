import time


def clock():
  t = time.strftime("%H:%M:%S")
  print(
    f"Time = {t}\r",
    end=""
  )

while True:
  clock()
  time.sleep(1)
