BEGIN
    FOR rec IN (SELECT exp.experiment_id, ew.write_up FROM tm_experiments exp JOIN eln_writeup ew ON ew.experiment_id = exp.experiment_id WHERE exp.protocol_id IN (481,501)) LOOP
        BEGIN
        -- Check if the substring exists in the CLOB
        IF DBMS_LOB.INSTR(rec.write_up, '{{9:') > 0 THEN
            -- Perform the update if substring is found
            UPDATE eln_writeup
            SET write_up = REPLACE(write_up, '{{9:' , '{{1080:')
            WHERE experiment_id = rec.experiment_id;
            dotmatics_aps_studies.debug_log('Update 9:', rec.experiment_id, NULL);
        END IF;
        IF DBMS_LOB.INSTR(rec.write_up, '{{8:') > 0 THEN
            -- Perform the update if substring is found
            UPDATE eln_writeup
            SET write_up = REPLACE(write_up, '{{8:' , '{{1100:')
            WHERE experiment_id = rec.experiment_id;
            dotmatics_aps_studies.debug_log('Update 8:', rec.experiment_id, NULL);
        END IF;
        IF DBMS_LOB.INSTR(rec.write_up, '{{reactant volume or quant:') > 0 THEN
            -- Perform the update if substring is found
            UPDATE eln_writeup
            SET write_up = REPLACE(write_up, '{{reactant volume or quant:' , '{{1080:')
            WHERE experiment_id = rec.experiment_id;
            dotmatics_aps_studies.debug_log('Update reactant volume or quant::', rec.experiment_id, NULL);
        END IF;
        IF DBMS_LOB.INSTR(rec.write_up, '{{solvent volume:') > 0 THEN
            -- Perform the update if substring is found
            UPDATE eln_writeup
            SET write_up = REPLACE(write_up, '{{solvent volume:' , '{{1062:')
            WHERE experiment_id = rec.experiment_id;
            dotmatics_aps_studies.debug_log('Update solvent volume:', rec.experiment_id, NULL);
        END IF;
        IF DBMS_LOB.INSTR(rec.write_up, '{{Reaction temp:') > 0 THEN
            -- Perform the update if substring is found
            UPDATE eln_writeup
            SET write_up = REPLACE(write_up, '{{Reaction temp:' , '{{1100:')
            WHERE experiment_id = rec.experiment_id;
            dotmatics_aps_studies.debug_log('Update Reaction temp', rec.experiment_id, NULL);
        END IF;
        IF DBMS_LOB.INSTR(rec.write_up, '{{product quantity:') > 0 THEN
            -- Perform the update if substring is found
            UPDATE eln_writeup
            SET write_up = REPLACE(write_up, '{{product quantity:' , '{{1060:')
            WHERE experiment_id = rec.experiment_id;
            dotmatics_aps_studies.debug_log('Update product quantity:', rec.experiment_id, NULL);
        END IF;
        EXCEPTION
            WHEN OTHERS THEN
            dotmatics_aps_studies.error_log('Update', rec.experiment_id, SQLERRM);
        END;
    END LOOP;
    COMMIT;
END;
