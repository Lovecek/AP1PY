import os
import datetime
from pathlib import Path

pod_složka_1 = "MujProgram/src"
pod_složka_2 = "MujProgram/info"

čas = datetime.datetime.now()
print("\nZdravím uživateli. \nAktuální čas:", čas.strftime("%H:%M"))

try:
    os.mkdir(hlavní_složka)
    print(f"Složka '{hlavní_složka, pod_složka_1}' úspěšně vytvořena")  
except FileExistsError:
    print(f"Složka '{hlavní_složka}' již existuje")
except PermissionError:
    print(f"Nedostatečné práva: Nebylo možné vytvořit '{hlavní_složka}'")
except Exception as e:
    print(f"Vyskytla se chyba")

