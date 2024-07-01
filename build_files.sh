set -o errexit

pip3 install -r requirements.txt
python3 manage.py collectstatic --no-input

python3 manage.py migrate

echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'nsubhash2003@gmail.com', '1234')" | python manage.py shell
