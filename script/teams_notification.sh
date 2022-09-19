curl --location --request POST $WEB_HOOK_LINK \
--header 'Content-Type: application/json' \
--data-raw '{
    "text": "$MESSAGE_NOTIFICATION"
}'