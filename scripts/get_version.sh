if [ -f version.txt ]; then
  VERSION=$(cat version.txt)
else
  VERSION=$(grep -m1 '^version:' pubspec.yaml | awk '{print $2}' | cut -d '+' -f1)
fi

echo "$VERSION"
