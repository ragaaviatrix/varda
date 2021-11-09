import requests
import json
import sys
import urllib3
import time
import argparse

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


def get_cid():
    params = {"action": "login_proc", "username": "admin", "password": priv_ip}
    # Wait for the Controller API
    r = None
    while r is None:
        try:
            r = requests.post(url, data=params, verify=False)
        except:
            pass

    resp = json.loads(r.text)
    if resp['CID']:
        print('CID obtained successfully')
    return resp['CID']


def add_email():
    params = {"action": "add_admin_email_addr", "admin_email": email_address, "CID": cid}
    r = requests.post(url2, data=params, verify=False)
    resp = json.loads(r.text)
    print(resp['results'])


def change_pw():
    params = {"action": "edit_account_user", "what": "password", "username": "admin", "old_password": priv_ip,
              "new_password": pw, "CID": cid}
    resp = requests.post(url2, data=params, verify=False)
    print(resp['results'])


def upgrade_ctrl():
    params = {"action": "upgrade", "CID": cid, "version": version}
    resp = requests.post(url2, data=params, verify=False)
    print('Please wait until the controller is upgraded...')
    print(resp['results'])


def copilot_setup():
    s = requests.Session()
    params = {"controllerIp": ctrl, "username": "admin", "password": ctrl_pwd}

    cplt_url = 'https://{}/login'.format(copilot_ip)
    r = s.post(cplt_url, data=params, verify=False)

    cplt_url = 'https://{}/setlicense'.format(copilot_ip)
    set_cplt_license = {"customerId": cp_license}
    r = s.post(cplt_url, data=set_cplt_license, verify=False)
    print(r.text)


def set_cust_id():
    params = {"action": "setup_customer_id", "CID": cid, "customer_id": customer_id}
    req = requests.post(url2, data=params, verify=False)
    resp = json.loads(req.text)
    print(json.dumps(resp['results'], indent=3))


if __name__ == '__main__':
    parse = argparse.ArgumentParser(description="Onboard")
    parse.add_argument("-pwd", "--pswd")
    parse.add_argument("-cpwd", "--ctrlpwd")
    parse.add_argument("-cpl", "--cpls")
    parse.add_argument("-crid", "--custid")

    user_input = parse.parse_args()

    init_passwd = user_input.pswd
    ctrl_pwd = user_input.ctrlpwd
    cp_license = user_input.cpls
    customer_id = user_input.custid

    ctrl = '3.66.206.13'
    priv_ip = init_passwd
    copilot_ip = '18.159.157.14'
    up_version = '6.5'
    email_address = 'rananth@aviatrix.com'

    url = "https://{}/v1/backend1".format(ctrl)
    url2 = "https://{}/v1/api".format(ctrl)

    cid = get_cid()
    add_email()
    change_pw()
    upgrade_ctrl()
    copilot_setup()
    set_cust_id()
