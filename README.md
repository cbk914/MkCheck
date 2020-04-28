<p align="center">
 <img align="center" src="https://raw.githubusercontent.com/s1l3nt78/MCheck/master/mcheck.PNG" />
<br />
 <img align="center" src="https://img.shields.io/github/issues/s1l3nt78/MCheck" />
 <img align="center" src="https://img.shields.io/github/forks/s1l3nt78/MCheck" />
 <img align="center" src="https://img.shields.io/github/stars/s1l3nt78/MCheck" />
 <br />
 <img align="center" src="https://img.shields.io/badge/Build-Alfa-orange" />
 <img align="center" src="https://img.shields.io/badge/Version-0.2-red" />
 <br />
  <img align="center" src="https://img.shields.io/badge/Author-s1l3nt78-yellowgreen" />
</p>
<br />
<br />

# MCheck
<strong>*s1l3nt78*</strong>

# Functions

  MCheck is used to check MikroTik Routers for:
  <br />
     -winbox_auth_bypass_creds_disclosure
  <br />
     -routeros_jailbreak
  <br />
  <br />
  If routersploit module (in development) confirms the Mikrotik device is vulnerable it parses the credentials into the miko.py script.
  <br />
  <br />
  The main function spawns a quick ssh session on the compromised machine to enumerate the Net AP name from IP
  <br>
    -Once the Network AP Name has been found the attacker can use the IP and login credentials to work with
     Mikrotik Routers config from a web-session.
    <br>
    <br>
    
# USAGE
<br />
  -The user must create the <strong><em>'scripts/tiks.txt'</em></strong> list with MikroTik Router IP's.
  <br />
  -Easiest way to do this is using Shodan for Vuln searching.
     or with nMap using the following command.
    <br />
    <br />
    # sudo nmap -vv -O -A -Pn -p 80,8291 111.11.11.1/24
    <br />
    This will scan the given IP block for all online devices and check if the appropriate services are running and vulnerable
    <br />
    <br />
    Once the attacker has a specific netblock <eg. 111.69.145.1/24>, the best way to create the list is using Microsoft Excel
    As you need to fill in the first block (111.69.145.1), then you can drag the coloum to quickly fill the IP's in the colom.
    Then copy the entire block into the <strong><em>'scripts/tiks.txt'</em></strong> file.
    <br />

# NOTE
<br />
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
THIS TOOL WAS MADE FOR EDUCATIONAL PURPOSES. ALL DAMAGE CAUSED BY ANY ACTIVITIES 
ILLEGAL OR OTHERWISE, FALLS SOLELY ON THE RESPONSIBILY OF THE USER.


# TODO
<br />
  Incorporation of routersploit to do automatic vuln checks for the MikroTik Router firmware.
  For now manual checks must be done by user.
  
