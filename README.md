<p align="center">
 <img align="center" src="https://raw.githubusercontent.com/s1l3nt78/MCheck/master/files/logo.PNG" />
<br />
 <img align="center" src="https://img.shields.io/github/issues/s1l3nt78/MCheck" />
 <img align="center" src="https://img.shields.io/github/forks/s1l3nt78/MCheck" />
 <img align="center" src="https://img.shields.io/github/stars/s1l3nt78/MCheck" />
 <br />
 <img align="center" src="https://img.shields.io/badge/Build-Alfa-orange" />
 <img align="center" src="https://img.shields.io/badge/Version-0.7-red" />
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
     <em>-winbox_auth_bypass_creds_disclosure
  <br />
     -routeros_jailbreak</em>
  <br />
  <br />
  If routersploit module confirms if the Mikrotik device is vulnerable and if found - displays login credentials
  <br />
  Which must be entered into <strong><em>scripts/miko.py</em></strong> for MCheck's auto shell module to correctly work.
  <br />
    <em> username = "<strong>admin</strong>"
 <br />
         password = "<strong>admin</strong>"</em>
  <br />
  <br />
  The main function auto spawns ssh sessions on the compromised targets to enumerate the Network Access Point name from IP
  <br>
    This is done through <strong><em>command = "/system identity print"</em></strong>
    <br />
    You can change the value of the command run in order to enumerate different data.
    <br />
    -Once the Network AP Name has been found the attacker can use the IP and login credentials to work with
     Mikrotik Routers config from a web-session.
    <br>
    <br>

<h2>Images:</h2>
<p>
<img align="center" src="https://raw.githubusercontent.com/s1l3nt78/MCheck/master/files/main.PNG">
 <br />
 <br />
<img align="center" src="https://raw.githubusercontent.com/s1l3nt78/MCheck/master/files/mcheck.PNG" 
</p>
 <img align="center" src="https://raw.githubusercontent.com/s1l3nt78/MCheck/master/files/rsf.PNG">
<br />
 <br />
 
# USAGE
<br />
  The following values need to be changed in <strong><em>'scripts/miko.py'</em></strong>
 
  For the Checker module to word correctly. Target host is set dynamically during the scan.
  <br />
  <br />
  -The user must create the <strong><em>'scripts/tiks.txt'</em></strong> list with MikroTik Router IP's.
  <br />
  Current <em>'scripts/tiks.txt'</em> does not contain valid MikroTik Router IP's. <strong>(STRICTLY EXAMPLE)</strong>
  <br />
  -Easiest way to do this is using Shodan for Vuln searching.
     or with nMap using the following command.
    <br />
    <br />
    <strong><em># sudo nmap -vv -O -A -Pn -p 80,8291 111.11.11.1/24</em></strong>
    <br />
    This will scan the given IP block for all online devices and check if the appropriate services are running and vulnerable
    <br />
    <br />
    Once the attacker has a specific netblock <eg. 111.69.145.1/24>, the best way to create the list is using Microsoft Excel
    As you need to fill in the first block (111.69.145.1), then you can drag the coloum to quickly fill the IP's in the colom.
    Then copy the entire block into the <strong><em>'scripts/tiks.txt'</em></strong> file.
    <br />

# LICENCE
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


  
