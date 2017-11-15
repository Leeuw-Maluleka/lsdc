
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
    form.CTCourseName.style.display = "none"
    if (form.CertificateType.value == "NT")
    {
        form.NTCourseName.style.display = "block"
    }
    else
    if (form.CertificateType.value == "CT")
    {
        form.CTCourseName.style.display = "block"
    }
    return true
}