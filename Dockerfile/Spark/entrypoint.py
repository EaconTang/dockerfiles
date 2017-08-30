#!/usr/bin/env python
import sys
import os
import time


def main():
    """"""
    args = sys.argv
    if len(args) == 2:
        cmd = args[1]
        if cmd == 'start-master':
            start_master()
        elif cmd == 'spark-shell':
            start_spark_shell()
        elif cmd == 'pyspark':
            start_pyspark()
        else:
            print("Unknown args: " + str(cmd))
            print_help()
            return
    else:
        print_help()
        return


def print_help():
    """"""
    print '\n'.join([
        "Availabe args for running image:",
        "\tstart-master:    start spark master server",
        "\tspark-shell:     start spark scala shell",
        "\tpyspatk:         start spark python shell"
    ])

def start_master():
    """"""
    os.system('/opt/spark/sbin/start-master.sh')
    time.sleep(3)
    tail_log()


def tail_log():
    for log in os.listdir('/opt/spark/logs'):
        if str(log).endswith('.out'):
            os.system('tail -f /opt/spark/logs/' + str(log))


def start_spark_shell():
    """"""


def start_pyspark():
    """"""


if __name__ == '__main__':
    main()
