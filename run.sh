
# Find New Target
target(){
	RARG=$(python scripts/get_t.py)
	VAR=$(echo ${RARG})
	FARG='host = "ARG"'
}
running(){
	mv scripts/tiks1.txt scripts/tiks.txt
	# Start
	TARG=$(cat scripts/miko.py | grep "host = *")
	target
	sed -i "s/${TARG}/${FARG}/g" scripts/miko.py
	sed -i "s/ARG/${VAR}/g" scripts/miko.py
}

# Start of Mikro_Check
while :
do
  echo "Press <CTRL+C> to exit."
  target
  running
  python scripts/miko.py | tee output.log
  SAVE=$(cat output.log)
  echo "${SAVE}" >> Micro_Check.results
  rm output.log
done


