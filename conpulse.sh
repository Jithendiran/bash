#!/bin/bash

#'''
#1 backend 
#2 auth
#3 consulting firm
#4 client
#'''
st=-1
function run {
    path_back="cd $1"
    path_fe="cd $2"
    opt=$3

    gnome-terminal --tab -t "Backend" -- bash -ic "$path_back;nodemon start;exec bash" &
    gnome-terminal --tab -t "Auth" -- bash -ic "$path_fe;npm run start-authentication;exec bash" &

    if [ $opt == "f" ];
        then
            echo "f"
            gnome-terminal --tab -t "firm" -- bash -ic "$path_fe;npm run start-consulting-firm-portal;exec bash" &
        elif [ $opt == "c" ];
        then
            echo "c"
            gnome-terminal --tab -t "client" -- bash -ic "$path_fe;npm run start-client-portal;exec bash" &
        else
            echo "all"
            gnome-terminal --tab -t "client" -- bash -ic "$path_fe;npm run start-client-portal;exec bash" &
            gnome-terminal --tab -t "firm" -- bash -ic "$path_fe;npm run start-consulting-firm-portal;exec bash" &
    fi

    code $1 &
    code $2
} 

if [ $# -gt 0 ]; 
then 

    while getopts "u a: s:" flag
    do
        case "${flag}" in
            u)
             echo "u flag reserved ${OPTARG}";;
            a)
            echo "all"
                if [ $st -eq -1 ]
                    then
                            
                        echo "Starting Conpulse 1";
                        run "/home/calibraint/Work/ConPulse/conpulse-1/conpulse_rest" "/home/calibraint/Work/ConPulse/conpulse-1/conpulse-web" "all"
                
                    else
                    #c -> client
                    #f -> consulting firm
                        if [ $OPTARG ==  "c" ]
                            then
                                echo "client"

                            #check st 1
                            if [ $st -eq 1 ]
                                then
                                    echo "Starting Conpulse 1";
                                    run "/home/calibraint/Work/ConPulse/conpulse-1/conpulse_rest" "/home/calibraint/Work/ConPulse/conpulse-1/conpulse-web" "c"
                                else
                                    echo "Starting Conpulse 2";
                                run "/home/calibraint/Work/ConPulse/conpulse-2/conpulse_rest" "/home/calibraint/Work/ConPulse/conpulse-2/conpulse-web" "c"

                            fi
                        elif [ $OPTARG ==  "f" ]
                            then
                            echo "firm"
                             #check st 1
                            if [ $st -eq 1 ]
                                then
                                    echo "Starting Conpulse 1";
                                    run "/home/calibraint/Work/ConPulse/conpulse-1/conpulse_rest" "/home/calibraint/Work/ConPulse/conpulse-1/conpulse-web" "f"
                                else
                                    echo "Starting Conpulse 2";
                                    run "/home/calibraint/Work/ConPulse/conpulse-2/conpulse_rest" "/home/calibraint/Work/ConPulse/conpulse-2/conpulse-web" "f"

                            fi
                        else
                            if [ $st -eq 1 ]
                                then
                                    echo "Starting Conpulse 1";
                                    run "/home/calibraint/Work/ConPulse/conpulse-1/conpulse_rest" "/home/calibraint/Work/ConPulse/conpulse-1/conpulse-web" "a"
                                else
                                    echo "Starting Conpulse 2";
                                    run "/home/calibraint/Work/ConPulse/conpulse-2/conpulse_rest" "/home/calibraint/Work/ConPulse/conpulse-2/conpulse-web" "a"

                            fi
                        fi
                fi

                ;;       
            s)
            #set 1-> c1 2-> c2 
            st=$OPTARG
            ;;
            
            \?)
            echo "invalid";;
        esac
    done
    
else
# execute conpulse 1 and open in vscode
    echo "Start Conpulse 1 ..."
    run "/home/calibraint/Work/ConPulse/conpulse-1/conpulse_rest" "/home/calibraint/Work/ConPulse/conpulse-1/conpulse-web" 
fi

# -s 1 -> will not run
#-s 1 -a c -> will run c1 -> auth,backend,client
#-s 1 -a f -> will run c1 -> auth,backend,firm
#-s 2 -a c -> will run c2 -> auth,backend,client
#-s 2 -a f -> will run c2 -> auth,backend,firm
# -s 1 -a a -> will run c1 -> all
# empty will run c1 -> all