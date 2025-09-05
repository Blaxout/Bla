import os

# --- Language Setup ---
lang = os.getenv('WIKI_LANG', 'es')
lang_path = f"source/{lang}"

# --- UI Translations ---
ui_texts = {
    'es': {
        "no_net": "No tienes internet, CONECTATE!!",
        "already_installed": "Ya esta instalado",
        "installed_successfully": "Instalado correctamente",
        "readme_reminder": "No olvides leer el archivo README.md para que sepas la funcionalidad del script, y el proceso de uso.",
        "install_failed": "No se pudo instalar, Verifica que no este instalado",
        "back_to_menu": "Volver al menú",
        "all_tools": "Todas las herramientas.",
        "categories": "Categorias.",
        "continue_prompt": "PRESIONA ENTER PARA CONTINUAR...: "
    },
    'fr': {
        "no_net": "Pas de connexion internet, connectez-vous !",
        "already_installed": "Déjà installé",
        "installed_successfully": "Installé avec succès",
        "readme_reminder": "N'oubliez pas de lire le fichier README.md pour connaître les fonctionnalités du script et comment l'utiliser.",
        "install_failed": "L'installation a échoué, vérifiez qu'il n'est pas déjà installé",
        "back_to_menu": "Retour au menu",
        "all_tools": "Tous les outils.",
        "categories": "Catégories.",
        "continue_prompt": "APPUYEZ SUR ENTRÉE POUR CONTINUER...: "
    }
}
t = ui_texts.get(lang, ui_texts['es'])

class logo:
  @classmethod
  def tool_header(self):
    os.system("clear")
    os.system(f"python {lang_path}/art/banner3")
    os.system(f"bash {lang_path}/.core")

  @classmethod
  def nonet(self):
    print("\n\033[1;35m Not_Found\n")
    print(f"'''\033[1;31m  [*]  \033[1;31m{t['no_net']}\033[00m'''\n")

  @classmethod
  def already_installed(self,name):
    print(f'''\033[1;32m'{name}'\033[1;32m {t['already_installed']}''')

  @classmethod
  def installed(self,name):
    print(f'''\033[1;37m
░░░░░░░░░░▄▄▄▄▄▄▄░░░░░░░░░░
░░░░░░▄▄▀▀░░░░░░░▀▀▄▄░░░░░░
░░░░▄▀░░░░░░░░░░░░░░░▀▄░░░░
░░░▄▀░░░▄▄▄▄▄▄▄▄▄▄▄░░░░█░░░ \033[1;33m '{name}'\033[01;32m {t["installed_successfully"]}\033[1;37m
░░█░░▄███████████████▄░░█░░
░█░░▄██▀░▄▄▀███▀▄▄░▀███░░█░
░█░░▀█████████████████▀░░█░
░█░░░░▀▀████████████▀░░░░█░  {t["readme_reminder"]}
░░█░░░░░░░░▀▀▀▀▀░░░░░░░▄▀░░
░░░▀▀▄▄▄▄░░░░░░░░░▄▄▄▀▀░░░░
░░▄██▀▄▄▄█▀▀▀▀▀▀▀█▄▄▄▀██▄░░
░▄▀██░░░░░▀▀▀▀▀▀▀░░░░░██▀▄░\033[1;32m  cat README.md\033[1;37m
█░░██░░░░░░░░░░░░░░░░░██░░░
█░░██░░░░░░░░░░░░░░░░░██░░█
█░░██░░░░░░░░░░░░░░░░░██░░█
█░░██░░░░░░░░░░░░░░░░░██░░█
█░░██░░░░░░░░░░░░░░░░░██░░█
█░░██▄░░░░░░░░░░░░░░░▄██░░█
▀▀▄█░█▄▄▄▄░░░░░░░▄▄▄▄█░█▄▀▀
░░░░░░░░░█▄▄▄▄▄▄▄█░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░
''')

  @classmethod
  def not_installed(self,name):
    self.tool_header()
    print(f'''
\033[1;33m{t["install_failed"]},\033[1;39m '{name}'''')

  @classmethod
  def back(self):
    print (f"\033[01;31m [\033[1;39m 99\033[1;31m ] \033[1;39m {t['back_to_menu']}\n")

  @classmethod
  def menu(self,total):
    self.tool_header()
    print (f'''
\033[1;31m  		   [\033[1;39m 1\033[1;31m ] \033[1;39m {t["all_tools"]}
\033[1;31m  		   [\033[1;39m 2\033[1;31m ] \033[1;39m {t["categories"]}\n
\033[1;31m  		   [\033[1;39m 99\033[1;31m ] \033[1;39m {t["back_to_menu"]} 

''')
  @classmethod
  def exit(self):
    self.tool_header()
    print ('''\033[00m''')