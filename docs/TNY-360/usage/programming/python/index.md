# Python

Here is a test of code :

```py title="test.py"

robot = new TNY360('192.168.1.42') # (1)!

if robot.connected == True:
    print("Robot connected")
else:
    print("Robot not connected")


```

1. This line is blocking until robot connection is established or unsuccessfull.