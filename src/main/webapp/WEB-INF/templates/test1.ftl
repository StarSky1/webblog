<html>
<head>
    <title>Welcome!</title>
</head>
<body>
<h1>Welcome ${user}!</h1>
<p>Our latest product:
    <a href="${latestProduct.url}">${latestProduct.name}</a>!
    <#assign x = 1>

    <@repeat count=4>
      Test ${x}
        <#assign x++>
    </@repeat>

    <@repeat count=3 hr=true>
      Test
    </@repeat>

    <@repeat count=3; cnt>
        ${cnt}. Test
    </@repeat>
</body>
</html>