<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 新規登録画面 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>投票システム - 新規登録</title>
</head>
<body id="newuser">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="login.html">投票システム</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="login.html">ログイン</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="newuser.html">新規登録<span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h1 class="textcenter">新規登録</h1>

        <form action="#" name="newuserform" method="post" onsubmit="return check()">
            <div class="form-group">
                <label for="exampleInputUserID">ユーザID</label>
                <input type="text" name="userid" class="form-control" id="exampleInputEmail1" placeholder="UserID">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">パスワード</label>
                <input type="password" name="password1" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword2">パスワード(確認用)</label>
                <input type="password" name="password2" class="form-control" id="exampleInputPassword2" placeholder="Password(確認用)">
            </div>
            <div class="form-group">
                <label for="exampleInputBirthday">生年月日</label><br>
                <select name="year" id="id_year">
                    <!-- option要素がjavascriptのプログラムにより挿入される、id_year -->
                </select>
                <select name="month" id="id_month">
                    <!-- option要素がjavascriptのプログラムにより挿入される、id_month -->
                </select>
                <select name="day" id="id_day">
                    <!-- option要素がjavascriptのプログラムにより挿入される、id_day -->
                </select>
            </div>
            <div class="form-group">
                <label for="exampleInputBirthday">性別</label><br>
                <div class="radio-inline">
                    <label>
                        <input type="radio" name="sex" id="optionsRadios1" value="1" checked>
                        男
                    </label>
                </div>
                <div class="radio-inline">
                    <label>
                        <input type="radio" name="sex" id="optionsRadios2" value="0">
                        女
                    </label>
                </div>
            </div>
            <button type="submit" class="btn btn-secondary">確認</button>
        </form>
    </div>

    <footer class="footer">
        <small>Copyright &copy; Sato Team, all rights reserved.</small>
    </footer>

    <script>
    (function() {
        'use strict';

        /*
        今日の日付データを変数todayに格納
        */
        var optionLoop, this_day, this_month, this_year, today;
        today = new Date();
        this_year = today.getFullYear();
        this_month = today.getMonth() + 1;
        this_day = today.getDate();

        /*
        ループ処理（スタート数字、終了数字、表示id名、デフォルト数字）
        */
        optionLoop = function(start, end, id, this_day) {
            var i, opt;

            opt = null;
            for (i = start; i <= end ; i++) {
                if (i === this_day) {
                    opt += "<option value='" + i + "' selected>" + i + "</option>";
                } else {
                    opt += "<option value='" + i + "'>" + i + "</option>";
                }
            }
            return document.getElementById(id).innerHTML = opt;
        };


        /*
        関数設定（スタート数字[必須]、終了数字[必須]、表示id名[必須]、デフォルト数字[省略可能]）
        */
        optionLoop(1950, this_year, 'id_year', this_year);
        optionLoop(1, 12, 'id_month', this_month);
        optionLoop(1, 31, 'id_day', this_day);
        })();

        function check(){
            var flg = 0;
            var che = 0;

            if (document.newuserform.userid.value == "" || document.newuserform.password1.value == "" || document.newuserform.password2.value == "") {
                flg = 1;
            }
            if (document.newuserform.password1.value == document.newuserform.password2.value) {
                che = 2;
            }

            if (flg == 1) {
                aleat('必須項目が入力されていません');
                return false;
            } else if (che == 2) {
                aleat('パスワードが一致しません');
                return false;
            } else {
                return true;
            }
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>
