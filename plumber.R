library(plumber)
library(luxJob)

#* @apiTitle luxJob API
#* @apiDescription API to query jobs, skills, companies and more

#* Get all skills
#* @get /skills
function() {
  get_skills()
}

#* Get skill by ID
#* @param skill_id The skill ID
#* @get /skills/<skill_id>
function(skill_id) {
  get_skill_by_id(as.character(skill_id))
}

#* Get all companies
#* @get /companies
function() {
  get_companies()
}

#* Get company by ID
#* @param company_id The company ID
#* @get /companies/<company_id>
function(company_id) {
  get_company_details(as.numeric(company_id))
}

#* Get all vacancies
#* @get /vacancies
function() {
  get_vacancies()
}

#* Get vacancy by ID
#* @param vacancy_id The vacancy ID
#* @get /vacancies/<vacancy_id>
function(vacancy_id) {
  get_vacancy_by_id(as.numeric(vacancy_id))
}

#* Get all learning tracks
#* @get /learning_tracks
function() {
  get_learning_tracks()
}

#* Get learning track by ID
#* @param track_id The track ID
#* @get /learning_tracks/<track_id>
function(track_id) {
  get_learning_track_by_id(as.numeric(track_id))
}

#* Get all books
#* @get /books
function() {
  get_books()
}

#* Get book by ID
#* @param book_id The book ID
#* @get /books/<book_id>
function(book_id) {
  get_book_by_id(as.numeric(book_id))
}

#* Log a search
#* @post /log_search
function(req) {
  log_search(req$body)
}
