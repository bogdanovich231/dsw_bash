#!/bin/bash

# Zadanie 1
function silnia_petla {
  if [ $1 -eq 0 ]; then
    echo 1
  else
    local i=$1
    local result=1
    while [ $i -gt 1 ]; do
      result=$((result * i))
      i=$((i - 1))
    done
    echo $result
  fi
}

function silnia_rek {
  if [ $1 -eq 0 ]; then
    echo 1
  else
    local result=$(silnia_rek $(($1 - 1)))
    echo $(($result * $1))
  fi
}

if [ -z "$4" ]; then
  read -p "Podaj imię: " imie
  read -p "Podaj nazwisko: " nazwisko
  read -p "Podaj rok urodzenia: " rok
  read -p "Podaj nazwę pliku: " plik
else
  imie=$1
  nazwisko=$2
  rok=$3
  plik=$4
fi

aktualny_rok=$(date +%Y)
wiek=$((aktualny_rok - rok))
echo "Witaj, $imie $nazwisko! Masz $wiek lat."

silnia_rek=$(silnia_rek $wiek)
silnia_petla=$(silnia_petla $wiek)


