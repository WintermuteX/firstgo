view: integration_hub {
  sql_table_name: PUBLIC.INTEGRATION_HUB ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED_AT ;;
  }

  dimension: definition_json {
    type: string
    sql: ${TABLE}.DEFINITION_JSON ;;
  }

  dimension: encrypted_params {
    type: string
    sql: ${TABLE}.ENCRYPTED_PARAMS ;;
  }

  dimension: fetch_error_message {
    type: string
    sql: ${TABLE}.FETCH_ERROR_MESSAGE ;;
  }

  dimension_group: fetched {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FETCHED_AT ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UPDATED_AT ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
