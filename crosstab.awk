{
    if(!columns[$sec]){
        columns[$sec]=$sec
    }
    data[$first][$sec]=$val
}

END{
    for(c in columns){
        printf ",%s",c 
    }

    for(row in data){
        printf "%s",row
        for(col in columns){
            if(!data[row][col]){
                printf ",0"
            }else{
                printf ",%s",data[row][col]
            }
        }
        print ""
    }
}

