read -p "Введите название проекта: " project_name
read -p "Введите директорию для создания проекта: " project_dir

if [ ! -d "$project_dir" ]; then
    echo "Указанная директория не существует. Проверьте путь."
    exit 1
fi

cd "$project_dir" || exit

mkdir -p "$project_name/src/scripts"
mkdir -p "$project_name/src/styles"
mkdir -p "$project_name/src/images"

touch "$project_name/README.md"
touch "$project_name/.gitignore"

echo "Структура проекта '$project_name' успешно создана в '$project_dir'."
