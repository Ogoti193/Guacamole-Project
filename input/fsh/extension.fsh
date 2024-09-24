Extension: MaritalStatusDateExtension
Id: marital-status-date
Title: "Patient Marital Status Date"
Description: "
    An extension to capture the date for when the marital status came into effect.
    
    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #draft
* value[x] only date
* valueDate 1..1
* ^context[+].type = #element
* ^context[=].expression = "Patient.maritalStatus"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson.extension"

Extension: MaritalStatusAndEffectiveDateExtension
Id: marital-status-and-effective-date
Title: "Patient Marital Status and Effective Date"
Description: "
    An extension to capture the marital status and the effective date for when the marital status came into effect.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #draft
* . SU // to ensure that both extensions are included in GET requests.
* extension contains MaritalStatusExtension named MaritalStatus 1..1
* extension contains MaritalStatusDateExtension named MaritalStatusDate 1..1
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"

Extension: MaritalStatusExtension
Id: marital-status
Title: "Patient Marital Status"
Description: "
    An extension to capture the marital status.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #draft
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/marital-status (extensible)
* valueCodeableConcept 1..1
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson.extension"