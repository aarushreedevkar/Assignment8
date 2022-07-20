#! /bin/bash -x

declare -A same_month

divisor=$((12-1+1))
select_month =$(( 1+($RANDOM%$divisor) ))
 case select_month in
       1)
        month="january"
       ;;
       2)
        month="february"
       ;;
       3)
        month="march"
       ;;
       4)
        month="april"
       ;;
       5)
        month="may"
       ;;
       6)
        month="june"
       ;;
       7)
        month="july"
       ;;
       8)
        month="augst"
       ;;
       9)
        month="september"
       ;;
       10)
        month="octomber"
       ;;
       11)
        month="november"
       ;;
       12)
        month="december"
       ;;
esac
echo "Individuals having birthday on $month are: "
j=0
for ((i=1;i<=50;i=$i+1))
do
     divisor1=$((12-1+1))
     birth_month=$(( 1+($RANDOM%divisor1) ))
     if (($birth_month==$select_month))
     then
         over=1
         while (( $over1!=0 ))
         do
            same_month[$j]="Individual" "$i"
            j=$(( $j+1))
          over1=0
         done
      fi
done
echo ${same_month[@]}



