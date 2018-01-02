view: result_maker {
  sql_table_name: PUBLIC.RESULT_MAKER ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: merge_query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MERGE_QUERY_ID ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.QUERY_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, merge_query.id, query.id, history.count, slug.count]
  }
}
