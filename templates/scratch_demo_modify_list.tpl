<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <h1 style="text-align:center">檔案管理</h1>
        <hr>
        <div class="container" >
            <div class="row">
                <form action="../remove_sb2.php" method="POST">
                    <table class="table">
                        <thead>
                        <tr>
                            <td>選取</td>
                            <td>檔名</td>
                        </tr>
                        </thead>
                        <tbody>
                            <{foreach from=$filenames item=filename}>
                                <tr>
                                    <td>
                                        <input type="checkbox" name="which_del[]" value="<{$filename}>"/>
                                    </td>
                                    <td>
                                        <a href="../get_sb2.php?filename=<{$filename}>">
                                            <{$filename}>
                                        </a>
                                    </td>
                                </tr>
                            <{/foreach}>
                        </tbody>
                    </table>
                    <input type="submit" value="刪除選取">
                </form>
            </div>
        </div>
    </body>
</html>