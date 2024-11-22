echo 'パスワードマネージャーへようこそ!'
while :
 do
 read -p '次の選択肢から入力してください(Add Password/Get Password/Exit)：' option
  case "$option" in
    'Add Password') 
	read -p 'サービス名を入力してください：' serviceName
	read -p 'ユーザー名を入力してください：' userName
	read -p 'パスワードを入力してください：' password
	echo -e "\nサービス名:${serviceName}\nユーザー名:${userName}\nパスワード:${password}" >> taskManager.text
	echo ""
	echo 'パスワードの追加は成功しました'
	;;
      'Get Password')
	read -p 'サービス名を入力してください：' serviceName
	 if grep -w "$serviceName" log.text; then
           echo "" 
	 else
	   echo "そのサービスは登録されていません"
	 fi
	 ;;
       Exit) echo 'Thank you!'
          break ;;
       *) echo '入力が間違えています。Add Password/Get Password/Exit から入力してください。';;
  esac
done
