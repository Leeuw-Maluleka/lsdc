
function validString(str) 
{
    if ((str.length == 0) || (str == 'none'))
        {return false}
    else
        {return true}
}

function checkpassword(form)
{
    if(validString(form.Name.value) == false)
    {
        alert("Name field cannot be empty")
        return false
    }

    if(validString(form.Password.value) == false)
    {
        alert("Password field cannot be empty")
        return false
    }

    if(form.Password.value != form.Confirm.value)
    {
        alert("Password fields must match")
        return false
    }
}

function checkformvalues(form)
{
	if(validString(form.StudentName.value) == false)
	{
	alert("Name field cannot be empty")
	return false
	}
	
	else if(validString(form.StudentIDno.value) == false)
	{
		alert("ID field cannot be empty")
		return false
	}
}

function OnLevelChange(form)
{
    form.NTCourseName.style.display = "none"
    form.STCourseName.style.display = "none"
    form.SPCourseName.style.display = "none"
    form.CSCourseName.style.display = "none"
    var quotediv = document.getElementsByName("quote")[0]
    if (quotediv != null) {
        quotediv.style.display = "none" 
        quotediv.innerHTML = ""
    }
    if (form.CertificateType.value != "none")
    {
        var btn = document.getElementsByName("btnmodulemaint")[0]
        if (btn != null) {
            btn.style.display = "block"
        }
    }
    if (form.CertificateType.value == "NT")
    {
        form.STCourseName.style.display = "none"
        form.SPCourseName.style.display = "none"
        form.CSCourseName.style.display = "none"
        form.NTCourseName.style.display = "block"
    }
    else
    if (form.CertificateType.value == "ST")
    {
        form.NTCourseName.style.display = "none"
        form.SPCourseName.style.display = "none"
        form.CSCourseName.style.display = "none"
        form.STCourseName.style.display = "block"
    }
    else
    if (form.CertificateType.value == "SP")
    {
        form.NTCourseName.style.display = "none"
        form.STCourseName.style.display = "none"
        form.CSCourseName.style.display = "none"
        form.SPCourseName.style.display = "block"
    }
    else
    if (form.CertificateType.value == "CS")
    {
        form.NTCourseName.style.display = "none"
        form.STCourseName.style.display = "none"
        form.SPCourseName.style.display = "none"
        form.CSCourseName.style.display = "block"
    }
    return true
}

function reloadPage() {
    window.location.reload(false);
}

function setRegisterUrl()
{   //this forces the address on the browser
    document.location = "./#update";
}
