library(plumber)
library(luxJob)

#* @apiTitle luxJob API
#* @apiDescription API to query jobs, skills, companies and more

#* Get all skills
#* @param limit Maximum number of results (default 100)
#* @get /skills
function(limit = 100) {
  get_skills(limit = as.numeric(limit))
}

#* Get skill by ID
#* @param skill_id The skill ID
#* @get /skills/<skill_id>
function(skill_id) {
  get_skill_by_id(as.character(skill_id))
}

#* Get all companies
#* @param limit Maximum number of results (default 100)
#* @get /companies
function(limit = 100) {
  get_companies(limit = as.numeric(limit))
}

#* Get company by ID
#* @param company_id The company ID
#* @get /companies/<company_id>
function(company_id) {
  get_company_details(as.numeric(company_id))
}

#* Get all vacancies
#* @param skill Filter by skill (optional)
#* @param company Filter by company (optional)
#* @param canton Filter by canton (optional)
#* @param limit Maximum number of results (default 100)
#* @get /vacancies
function(skill = NULL, company = NULL, canton = NULL, limit = 100) {
  get_vacancies(skill = skill, company = company, canton = canton, limit = as.numeric(limit))
}

#* Get vacancy by ID
#* @param vacancy_id The vacancy ID
#* @get /vacancies/<vacancy_id>
function(vacancy_id) {
  get_vacancy_by_id(as.numeric(vacancy_id))
}

#* Get all learning tracks
#* @param skill_id Filter by skill ID (optional)
#* @get /learning_tracks
function(skill_id = NULL) {
  get_learning_tracks(skill_id = skill_id)
}

#* Get learning track by ID
#* @param track_id The track ID
#* @ge
