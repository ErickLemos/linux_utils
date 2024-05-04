# Linux Utils
- OS: Ubuntu 24 LTS

### base
- **configure-gnome.sh**: configurações basicas para melhor experiencia no gnome.

### fixes
- **fix-jetbrains-ides-shutdown.sh**: erro de desligamento na abertura de um projeto.

### hardware config
- **cpu scheduler**: ajusta o governor do cpu para "perfomance" permanentemente.
- **pipewire**: ajusta o pipewire para melhor qualidade de audio.
- **configure-memory-swappiness.sh**: configure o sistema para usar menos swap.
- **disable-mouse-acceleration.sh**: desabilita a aceleração do mouse.

### software installs
- **install-essential-packages.sh**: instala pacotes essenciais para um ambiente de desenvolvimento.
- **install-firecracker.sh**: instala e compila a jvm firecracker.
- **install-flathub-base.sh**: instala a base para o uso do flathub.
- **install-graalvm**: instala graalvm como jvm principal no sistema.
- **install-rust**: instala rust com base no script fornecido oficionalmente.

### utils
- **nvidia-monitor.sh**: monitora o status da gpu - com base no nvidia-smi