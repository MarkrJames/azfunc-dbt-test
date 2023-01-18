import logging
import subprocess

import azure.functions as func

def main(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Python HTTP trigger function processed a request.')

    logging.info('Start With Popen dbt')
    with subprocess.Popen(["ls"], stdout=subprocess.PIPE, shell=True) as proc: # this runs fine, although shell cmd shell=True 
    #with subprocess.Popen(["/tmp", "dbt"], stdout=subprocess.PIPE) as proc: # Attempt to output dbt helper as doesn't write to log- When running locally remove subprocess.Popen(["dbt"] remove "/tmp"
        for line in proc.stdout:
            line = line.decode('utf-8').replace('\n', '').strip()
            logging.info(line)
    logging.info('End With Popen dbt')