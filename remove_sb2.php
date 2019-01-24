<?php
$escape = function ($filename) {
    return addslashes(htmlspecialchars($filename));
};

$sb2dir    = 'sb2-js/examples/';
$filenames = array_slice(scandir($sb2dir), 2);

$which_del = array_map($escape, $_POST['which_del']);

$which_del = array_filter($which_del, function ($filename) use ($filenames) {
    return in_array($filename, $filenames);
});

$which_del = array_map(function ($filename) use ($sb2dir) {
    return $sb2dir . $filename;
}, $which_del);

(sizeof($which_del)) > 0
&& array_map('unlink', $which_del) || exit('delete error');
echo '<script>' . "window.location.href='admin/modify_list.php';" . '</script>';
