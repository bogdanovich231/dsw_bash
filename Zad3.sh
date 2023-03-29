#!/bin/bash

# Zadanie 3
if [ -z "$2" ]; then
  echo "Podaj numer dnia i miesiąc jako argumenty."
  exit 1
fi

numer_dnia=$1
miesiac=$2

dzien_tygodnia=$(date -d "$miesiac/$numer_dnia/2022" +%A 2> /dev/null)

if [ $? -eq 0 ]; then
  echo "Dzień tygodnia dla $numer_dnia $miesiac 2022 to: $dzien_tygodnia"
  echo "Dzień tygodnia dla $numer_dnia $miesiac 2022 to: $dzien_tygodnia" >> "$plik/$plik.txt"
else
  echo "Podano błędne dane lub wyznaczenie dnia tygodnia się nie powiodło." >> "$plik/$plik.txt"
  exit 1
fi
