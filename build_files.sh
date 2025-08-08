echo "BUILD START"
python3.9 -m pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput --clear

# Create dist directory and copy static files
mkdir -p dist
cp -r static/* dist/ 2>/dev/null || :
# Copy templates or other necessary files
cp -r templates dist/ 2>/dev/null || :

echo "BUILD END"
