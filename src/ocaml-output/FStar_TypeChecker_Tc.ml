
open Prims

let set_hint_correlator : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.sigelt  ->  FStar_TypeChecker_Env.env = (fun env se -> (match ((FStar_Options.reuse_hint_for ())) with
| Some (l) -> begin
(

let lid = (let _157_5 = (FStar_TypeChecker_Env.current_module env)
in (FStar_Ident.lid_add_suffix _157_5 l))
in (

let _60_18 = env
in {FStar_TypeChecker_Env.solver = _60_18.FStar_TypeChecker_Env.solver; FStar_TypeChecker_Env.range = _60_18.FStar_TypeChecker_Env.range; FStar_TypeChecker_Env.curmodule = _60_18.FStar_TypeChecker_Env.curmodule; FStar_TypeChecker_Env.gamma = _60_18.FStar_TypeChecker_Env.gamma; FStar_TypeChecker_Env.gamma_cache = _60_18.FStar_TypeChecker_Env.gamma_cache; FStar_TypeChecker_Env.modules = _60_18.FStar_TypeChecker_Env.modules; FStar_TypeChecker_Env.expected_typ = _60_18.FStar_TypeChecker_Env.expected_typ; FStar_TypeChecker_Env.sigtab = _60_18.FStar_TypeChecker_Env.sigtab; FStar_TypeChecker_Env.is_pattern = _60_18.FStar_TypeChecker_Env.is_pattern; FStar_TypeChecker_Env.instantiate_imp = _60_18.FStar_TypeChecker_Env.instantiate_imp; FStar_TypeChecker_Env.effects = _60_18.FStar_TypeChecker_Env.effects; FStar_TypeChecker_Env.generalize = _60_18.FStar_TypeChecker_Env.generalize; FStar_TypeChecker_Env.letrecs = _60_18.FStar_TypeChecker_Env.letrecs; FStar_TypeChecker_Env.top_level = _60_18.FStar_TypeChecker_Env.top_level; FStar_TypeChecker_Env.check_uvars = _60_18.FStar_TypeChecker_Env.check_uvars; FStar_TypeChecker_Env.use_eq = _60_18.FStar_TypeChecker_Env.use_eq; FStar_TypeChecker_Env.is_iface = _60_18.FStar_TypeChecker_Env.is_iface; FStar_TypeChecker_Env.admit = _60_18.FStar_TypeChecker_Env.admit; FStar_TypeChecker_Env.lax = _60_18.FStar_TypeChecker_Env.lax; FStar_TypeChecker_Env.lax_universes = _60_18.FStar_TypeChecker_Env.lax_universes; FStar_TypeChecker_Env.type_of = _60_18.FStar_TypeChecker_Env.type_of; FStar_TypeChecker_Env.universe_of = _60_18.FStar_TypeChecker_Env.universe_of; FStar_TypeChecker_Env.use_bv_sorts = _60_18.FStar_TypeChecker_Env.use_bv_sorts; FStar_TypeChecker_Env.qname_and_index = Some (((lid), ((Prims.parse_int "0"))))}))
end
| None -> begin
(

let lids = (FStar_Syntax_Util.lids_of_sigelt se)
in (

let lid = (match (lids) with
| [] -> begin
(let _157_8 = (FStar_TypeChecker_Env.current_module env)
in (let _157_7 = (let _157_6 = (FStar_Syntax_Syntax.next_id ())
in (FStar_All.pipe_right _157_6 FStar_Util.string_of_int))
in (FStar_Ident.lid_add_suffix _157_8 _157_7)))
end
| (l)::_60_24 -> begin
l
end)
in (

let _60_28 = env
in {FStar_TypeChecker_Env.solver = _60_28.FStar_TypeChecker_Env.solver; FStar_TypeChecker_Env.range = _60_28.FStar_TypeChecker_Env.range; FStar_TypeChecker_Env.curmodule = _60_28.FStar_TypeChecker_Env.curmodule; FStar_TypeChecker_Env.gamma = _60_28.FStar_TypeChecker_Env.gamma; FStar_TypeChecker_Env.gamma_cache = _60_28.FStar_TypeChecker_Env.gamma_cache; FStar_TypeChecker_Env.modules = _60_28.FStar_TypeChecker_Env.modules; FStar_TypeChecker_Env.expected_typ = _60_28.FStar_TypeChecker_Env.expected_typ; FStar_TypeChecker_Env.sigtab = _60_28.FStar_TypeChecker_Env.sigtab; FStar_TypeChecker_Env.is_pattern = _60_28.FStar_TypeChecker_Env.is_pattern; FStar_TypeChecker_Env.instantiate_imp = _60_28.FStar_TypeChecker_Env.instantiate_imp; FStar_TypeChecker_Env.effects = _60_28.FStar_TypeChecker_Env.effects; FStar_TypeChecker_Env.generalize = _60_28.FStar_TypeChecker_Env.generalize; FStar_TypeChecker_Env.letrecs = _60_28.FStar_TypeChecker_Env.letrecs; FStar_TypeChecker_Env.top_level = _60_28.FStar_TypeChecker_Env.top_level; FStar_TypeChecker_Env.check_uvars = _60_28.FStar_TypeChecker_Env.check_uvars; FStar_TypeChecker_Env.use_eq = _60_28.FStar_TypeChecker_Env.use_eq; FStar_TypeChecker_Env.is_iface = _60_28.FStar_TypeChecker_Env.is_iface; FStar_TypeChecker_Env.admit = _60_28.FStar_TypeChecker_Env.admit; FStar_TypeChecker_Env.lax = _60_28.FStar_TypeChecker_Env.lax; FStar_TypeChecker_Env.lax_universes = _60_28.FStar_TypeChecker_Env.lax_universes; FStar_TypeChecker_Env.type_of = _60_28.FStar_TypeChecker_Env.type_of; FStar_TypeChecker_Env.universe_of = _60_28.FStar_TypeChecker_Env.universe_of; FStar_TypeChecker_Env.use_bv_sorts = _60_28.FStar_TypeChecker_Env.use_bv_sorts; FStar_TypeChecker_Env.qname_and_index = Some (((lid), ((Prims.parse_int "0"))))})))
end))


let log : FStar_TypeChecker_Env.env  ->  Prims.bool = (fun env -> ((FStar_Options.log_types ()) && (not ((let _157_11 = (FStar_TypeChecker_Env.current_module env)
in (FStar_Ident.lid_equals FStar_Syntax_Const.prims_lid _157_11))))))


let tc_check_trivial_guard : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.term  ->  FStar_Syntax_Syntax.typ  ->  FStar_Syntax_Syntax.term = (fun env t k -> (

let _60_37 = (FStar_TypeChecker_TcTerm.tc_check_tot_or_gtot_term env t k)
in (match (_60_37) with
| (t, c, g) -> begin
(

let _60_38 = (FStar_ST.op_Colon_Equals t.FStar_Syntax_Syntax.tk (Some (c.FStar_Syntax_Syntax.res_typ.FStar_Syntax_Syntax.n)))
in (

let _60_40 = (FStar_TypeChecker_Rel.force_trivial_guard env g)
in t))
end)))


let recheck_debug : Prims.string  ->  FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.term  ->  FStar_Syntax_Syntax.term = (fun s env t -> (

let _60_45 = if (FStar_TypeChecker_Env.debug env (FStar_Options.Other ("ED"))) then begin
(let _157_24 = (FStar_Syntax_Print.term_to_string t)
in (FStar_Util.print2 "Term has been %s-transformed to:\n%s\n----------\n" s _157_24))
end else begin
()
end
in (

let _60_52 = (FStar_TypeChecker_TcTerm.tc_term env t)
in (match (_60_52) with
| (t', _60_49, _60_51) -> begin
(

let _60_53 = if (FStar_TypeChecker_Env.debug env (FStar_Options.Other ("ED"))) then begin
(let _157_25 = (FStar_Syntax_Print.term_to_string t')
in (FStar_Util.print1 "Re-checked; got:\n%s\n----------\n" _157_25))
end else begin
()
end
in t)
end))))


let check_and_gen : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.term  ->  FStar_Syntax_Syntax.typ  ->  FStar_Syntax_Syntax.tscheme = (fun env t k -> (let _157_32 = (tc_check_trivial_guard env t k)
in (FStar_TypeChecker_Util.generalize_universes env _157_32)))


let check_nogen = (fun env t k -> (

let t = (tc_check_trivial_guard env t k)
in (let _157_36 = (FStar_TypeChecker_Normalize.normalize ((FStar_TypeChecker_Normalize.Beta)::[]) env t)
in (([]), (_157_36)))))


let tc_tparams : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.binders  ->  (FStar_Syntax_Syntax.binders * FStar_TypeChecker_Env.env * FStar_Syntax_Syntax.universes) = (fun env tps -> (

let _60_68 = (FStar_TypeChecker_TcTerm.tc_binders env tps)
in (match (_60_68) with
| (tps, env, g, us) -> begin
(

let _60_69 = (FStar_TypeChecker_Rel.force_trivial_guard env g)
in ((tps), (env), (us)))
end)))


let monad_signature : FStar_TypeChecker_Env.env  ->  FStar_Ident.lident  ->  FStar_Syntax_Syntax.term  ->  (FStar_Syntax_Syntax.bv * FStar_Syntax_Syntax.term) = (fun env m s -> (

let fail = (fun _60_75 -> (match (()) with
| () -> begin
(let _157_51 = (let _157_50 = (let _157_49 = (FStar_TypeChecker_Errors.unexpected_signature_for_monad env m s)
in ((_157_49), ((FStar_Ident.range_of_lid m))))
in FStar_Syntax_Syntax.Error (_157_50))
in (Prims.raise _157_51))
end))
in (

let s = (FStar_Syntax_Subst.compress s)
in (match (s.FStar_Syntax_Syntax.n) with
| FStar_Syntax_Syntax.Tm_arrow (bs, c) -> begin
(

let bs = (FStar_Syntax_Subst.open_binders bs)
in (match (bs) with
| ((a, _60_88))::((wp, _60_84))::[] -> begin
((a), (wp.FStar_Syntax_Syntax.sort))
end
| _60_92 -> begin
(fail ())
end))
end
| _60_94 -> begin
(fail ())
end))))


let open_univ_vars : FStar_Syntax_Syntax.univ_names  ->  (FStar_Syntax_Syntax.bv * FStar_Syntax_Syntax.arg_qualifier Prims.option) Prims.list  ->  FStar_Syntax_Syntax.comp  ->  (FStar_Syntax_Syntax.univ_names * (FStar_Syntax_Syntax.bv * FStar_Syntax_Syntax.arg_qualifier Prims.option) Prims.list * FStar_Syntax_Syntax.comp) = (fun uvs binders c -> (match (binders) with
| [] -> begin
(

let _60_101 = (FStar_Syntax_Subst.open_univ_vars_comp uvs c)
in (match (_60_101) with
| (uvs, c) -> begin
((uvs), ([]), (c))
end))
end
| _60_103 -> begin
(

let t' = (FStar_Syntax_Util.arrow binders c)
in (

let _60_107 = (FStar_Syntax_Subst.open_univ_vars uvs t')
in (match (_60_107) with
| (uvs, t') -> begin
(match ((let _157_58 = (FStar_Syntax_Subst.compress t')
in _157_58.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (binders, c) -> begin
((uvs), (binders), (c))
end
| _60_113 -> begin
(FStar_All.failwith "Impossible")
end)
end)))
end))


let rec tc_eff_decl : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.eff_decl  ->  FStar_Syntax_Syntax.eff_decl = (fun env0 ed -> (

let _60_116 = ()
in (

let _60_121 = (FStar_Syntax_Subst.open_term' ed.FStar_Syntax_Syntax.binders ed.FStar_Syntax_Syntax.signature)
in (match (_60_121) with
| (effect_params_un, signature_un, opening) -> begin
(

let _60_126 = (tc_tparams env0 effect_params_un)
in (match (_60_126) with
| (effect_params, env, _60_125) -> begin
(

let _60_130 = (FStar_TypeChecker_TcTerm.tc_trivial_guard env signature_un)
in (match (_60_130) with
| (signature, _60_129) -> begin
(

let ed = (

let _60_131 = ed
in {FStar_Syntax_Syntax.qualifiers = _60_131.FStar_Syntax_Syntax.qualifiers; FStar_Syntax_Syntax.cattributes = _60_131.FStar_Syntax_Syntax.cattributes; FStar_Syntax_Syntax.mname = _60_131.FStar_Syntax_Syntax.mname; FStar_Syntax_Syntax.univs = _60_131.FStar_Syntax_Syntax.univs; FStar_Syntax_Syntax.binders = effect_params; FStar_Syntax_Syntax.signature = signature; FStar_Syntax_Syntax.ret_wp = _60_131.FStar_Syntax_Syntax.ret_wp; FStar_Syntax_Syntax.bind_wp = _60_131.FStar_Syntax_Syntax.bind_wp; FStar_Syntax_Syntax.if_then_else = _60_131.FStar_Syntax_Syntax.if_then_else; FStar_Syntax_Syntax.ite_wp = _60_131.FStar_Syntax_Syntax.ite_wp; FStar_Syntax_Syntax.stronger = _60_131.FStar_Syntax_Syntax.stronger; FStar_Syntax_Syntax.close_wp = _60_131.FStar_Syntax_Syntax.close_wp; FStar_Syntax_Syntax.assert_p = _60_131.FStar_Syntax_Syntax.assert_p; FStar_Syntax_Syntax.assume_p = _60_131.FStar_Syntax_Syntax.assume_p; FStar_Syntax_Syntax.null_wp = _60_131.FStar_Syntax_Syntax.null_wp; FStar_Syntax_Syntax.trivial = _60_131.FStar_Syntax_Syntax.trivial; FStar_Syntax_Syntax.repr = _60_131.FStar_Syntax_Syntax.repr; FStar_Syntax_Syntax.return_repr = _60_131.FStar_Syntax_Syntax.return_repr; FStar_Syntax_Syntax.bind_repr = _60_131.FStar_Syntax_Syntax.bind_repr; FStar_Syntax_Syntax.actions = _60_131.FStar_Syntax_Syntax.actions})
in (

let ed = (match (effect_params) with
| [] -> begin
ed
end
| _60_136 -> begin
(

let op = (fun ts -> (

let _60_139 = ()
in (

let t1 = (FStar_Syntax_Subst.subst opening (Prims.snd ts))
in (([]), (t1)))))
in (

let _60_142 = ed
in (let _157_101 = (op ed.FStar_Syntax_Syntax.ret_wp)
in (let _157_100 = (op ed.FStar_Syntax_Syntax.bind_wp)
in (let _157_99 = (op ed.FStar_Syntax_Syntax.if_then_else)
in (let _157_98 = (op ed.FStar_Syntax_Syntax.ite_wp)
in (let _157_97 = (op ed.FStar_Syntax_Syntax.stronger)
in (let _157_96 = (op ed.FStar_Syntax_Syntax.close_wp)
in (let _157_95 = (op ed.FStar_Syntax_Syntax.assert_p)
in (let _157_94 = (op ed.FStar_Syntax_Syntax.assume_p)
in (let _157_93 = (op ed.FStar_Syntax_Syntax.null_wp)
in (let _157_92 = (op ed.FStar_Syntax_Syntax.trivial)
in (let _157_91 = (let _157_82 = (op (([]), (ed.FStar_Syntax_Syntax.repr)))
in (Prims.snd _157_82))
in (let _157_90 = (op ed.FStar_Syntax_Syntax.return_repr)
in (let _157_89 = (op ed.FStar_Syntax_Syntax.bind_repr)
in (let _157_88 = (FStar_List.map (fun a -> (

let _60_145 = a
in (let _157_87 = (let _157_84 = (op (([]), (a.FStar_Syntax_Syntax.action_defn)))
in (Prims.snd _157_84))
in (let _157_86 = (let _157_85 = (op (([]), (a.FStar_Syntax_Syntax.action_typ)))
in (Prims.snd _157_85))
in {FStar_Syntax_Syntax.action_name = _60_145.FStar_Syntax_Syntax.action_name; FStar_Syntax_Syntax.action_unqualified_name = _60_145.FStar_Syntax_Syntax.action_unqualified_name; FStar_Syntax_Syntax.action_univs = _60_145.FStar_Syntax_Syntax.action_univs; FStar_Syntax_Syntax.action_defn = _157_87; FStar_Syntax_Syntax.action_typ = _157_86})))) ed.FStar_Syntax_Syntax.actions)
in {FStar_Syntax_Syntax.qualifiers = _60_142.FStar_Syntax_Syntax.qualifiers; FStar_Syntax_Syntax.cattributes = _60_142.FStar_Syntax_Syntax.cattributes; FStar_Syntax_Syntax.mname = _60_142.FStar_Syntax_Syntax.mname; FStar_Syntax_Syntax.univs = _60_142.FStar_Syntax_Syntax.univs; FStar_Syntax_Syntax.binders = _60_142.FStar_Syntax_Syntax.binders; FStar_Syntax_Syntax.signature = _60_142.FStar_Syntax_Syntax.signature; FStar_Syntax_Syntax.ret_wp = _157_101; FStar_Syntax_Syntax.bind_wp = _157_100; FStar_Syntax_Syntax.if_then_else = _157_99; FStar_Syntax_Syntax.ite_wp = _157_98; FStar_Syntax_Syntax.stronger = _157_97; FStar_Syntax_Syntax.close_wp = _157_96; FStar_Syntax_Syntax.assert_p = _157_95; FStar_Syntax_Syntax.assume_p = _157_94; FStar_Syntax_Syntax.null_wp = _157_93; FStar_Syntax_Syntax.trivial = _157_92; FStar_Syntax_Syntax.repr = _157_91; FStar_Syntax_Syntax.return_repr = _157_90; FStar_Syntax_Syntax.bind_repr = _157_89; FStar_Syntax_Syntax.actions = _157_88}))))))))))))))))
end)
in (

let wp_with_fresh_result_type = (fun env mname signature -> (

let fail = (fun t -> (let _157_112 = (let _157_111 = (let _157_110 = (FStar_TypeChecker_Errors.unexpected_signature_for_monad env mname t)
in ((_157_110), ((FStar_Ident.range_of_lid mname))))
in FStar_Syntax_Syntax.Error (_157_111))
in (Prims.raise _157_112)))
in (match ((let _157_113 = (FStar_Syntax_Subst.compress signature)
in _157_113.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (bs, c) -> begin
(

let bs = (FStar_Syntax_Subst.open_binders bs)
in (match (bs) with
| ((a, _60_165))::((wp, _60_161))::[] -> begin
((a), (wp.FStar_Syntax_Syntax.sort))
end
| _60_169 -> begin
(fail signature)
end))
end
| _60_171 -> begin
(fail signature)
end)))
in (

let _60_174 = (wp_with_fresh_result_type env ed.FStar_Syntax_Syntax.mname ed.FStar_Syntax_Syntax.signature)
in (match (_60_174) with
| (a, wp_a) -> begin
(

let fresh_effect_signature = (fun _60_176 -> (match (()) with
| () -> begin
(

let _60_180 = (FStar_TypeChecker_TcTerm.tc_trivial_guard env signature_un)
in (match (_60_180) with
| (signature, _60_179) -> begin
(wp_with_fresh_result_type env ed.FStar_Syntax_Syntax.mname signature)
end))
end))
in (

let env = (let _157_116 = (FStar_Syntax_Syntax.new_bv None ed.FStar_Syntax_Syntax.signature)
in (FStar_TypeChecker_Env.push_bv env _157_116))
in (

let _60_182 = if (FStar_All.pipe_left (FStar_TypeChecker_Env.debug env0) (FStar_Options.Other ("ED"))) then begin
(let _157_122 = (FStar_Syntax_Print.lid_to_string ed.FStar_Syntax_Syntax.mname)
in (let _157_121 = (FStar_Syntax_Print.binders_to_string " " ed.FStar_Syntax_Syntax.binders)
in (let _157_120 = (FStar_Syntax_Print.term_to_string ed.FStar_Syntax_Syntax.signature)
in (let _157_119 = (let _157_117 = (FStar_Syntax_Syntax.bv_to_name a)
in (FStar_Syntax_Print.term_to_string _157_117))
in (let _157_118 = (FStar_Syntax_Print.term_to_string a.FStar_Syntax_Syntax.sort)
in (FStar_Util.print5 "Checking effect signature: %s %s : %s\n(a is %s:%s)\n" _157_122 _157_121 _157_120 _157_119 _157_118))))))
end else begin
()
end
in (

let check_and_gen' = (fun env _60_189 k -> (match (_60_189) with
| (_60_187, t) -> begin
(check_and_gen env t k)
end))
in (

let return_wp = (

let expected_k = (let _157_134 = (let _157_132 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_131 = (let _157_130 = (let _157_129 = (FStar_Syntax_Syntax.bv_to_name a)
in (FStar_Syntax_Syntax.null_binder _157_129))
in (_157_130)::[])
in (_157_132)::_157_131))
in (let _157_133 = (FStar_Syntax_Syntax.mk_GTotal wp_a)
in (FStar_Syntax_Util.arrow _157_134 _157_133)))
in (check_and_gen' env ed.FStar_Syntax_Syntax.ret_wp expected_k))
in (

let bind_wp = (

let _60_195 = (fresh_effect_signature ())
in (match (_60_195) with
| (b, wp_b) -> begin
(

let a_wp_b = (let _157_138 = (let _157_136 = (let _157_135 = (FStar_Syntax_Syntax.bv_to_name a)
in (FStar_Syntax_Syntax.null_binder _157_135))
in (_157_136)::[])
in (let _157_137 = (FStar_Syntax_Syntax.mk_Total wp_b)
in (FStar_Syntax_Util.arrow _157_138 _157_137)))
in (

let expected_k = (let _157_149 = (let _157_147 = (FStar_Syntax_Syntax.null_binder FStar_TypeChecker_Common.t_range)
in (let _157_146 = (let _157_145 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_144 = (let _157_143 = (FStar_Syntax_Syntax.mk_binder b)
in (let _157_142 = (let _157_141 = (FStar_Syntax_Syntax.null_binder wp_a)
in (let _157_140 = (let _157_139 = (FStar_Syntax_Syntax.null_binder a_wp_b)
in (_157_139)::[])
in (_157_141)::_157_140))
in (_157_143)::_157_142))
in (_157_145)::_157_144))
in (_157_147)::_157_146))
in (let _157_148 = (FStar_Syntax_Syntax.mk_Total wp_b)
in (FStar_Syntax_Util.arrow _157_149 _157_148)))
in (check_and_gen' env ed.FStar_Syntax_Syntax.bind_wp expected_k)))
end))
in (

let if_then_else = (

let p = (let _157_151 = (let _157_150 = (FStar_Syntax_Util.type_u ())
in (FStar_All.pipe_right _157_150 Prims.fst))
in (FStar_Syntax_Syntax.new_bv (Some ((FStar_Ident.range_of_lid ed.FStar_Syntax_Syntax.mname))) _157_151))
in (

let expected_k = (let _157_160 = (let _157_158 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_157 = (let _157_156 = (FStar_Syntax_Syntax.mk_binder p)
in (let _157_155 = (let _157_154 = (FStar_Syntax_Syntax.null_binder wp_a)
in (let _157_153 = (let _157_152 = (FStar_Syntax_Syntax.null_binder wp_a)
in (_157_152)::[])
in (_157_154)::_157_153))
in (_157_156)::_157_155))
in (_157_158)::_157_157))
in (let _157_159 = (FStar_Syntax_Syntax.mk_Total wp_a)
in (FStar_Syntax_Util.arrow _157_160 _157_159)))
in (check_and_gen' env ed.FStar_Syntax_Syntax.if_then_else expected_k)))
in (

let ite_wp = (

let expected_k = (let _157_165 = (let _157_163 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_162 = (let _157_161 = (FStar_Syntax_Syntax.null_binder wp_a)
in (_157_161)::[])
in (_157_163)::_157_162))
in (let _157_164 = (FStar_Syntax_Syntax.mk_Total wp_a)
in (FStar_Syntax_Util.arrow _157_165 _157_164)))
in (check_and_gen' env ed.FStar_Syntax_Syntax.ite_wp expected_k))
in (

let stronger = (

let _60_207 = (FStar_Syntax_Util.type_u ())
in (match (_60_207) with
| (t, _60_206) -> begin
(

let expected_k = (let _157_172 = (let _157_170 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_169 = (let _157_168 = (FStar_Syntax_Syntax.null_binder wp_a)
in (let _157_167 = (let _157_166 = (FStar_Syntax_Syntax.null_binder wp_a)
in (_157_166)::[])
in (_157_168)::_157_167))
in (_157_170)::_157_169))
in (let _157_171 = (FStar_Syntax_Syntax.mk_Total t)
in (FStar_Syntax_Util.arrow _157_172 _157_171)))
in (check_and_gen' env ed.FStar_Syntax_Syntax.stronger expected_k))
end))
in (

let close_wp = (

let b = (let _157_174 = (let _157_173 = (FStar_Syntax_Util.type_u ())
in (FStar_All.pipe_right _157_173 Prims.fst))
in (FStar_Syntax_Syntax.new_bv (Some ((FStar_Ident.range_of_lid ed.FStar_Syntax_Syntax.mname))) _157_174))
in (

let b_wp_a = (let _157_178 = (let _157_176 = (let _157_175 = (FStar_Syntax_Syntax.bv_to_name b)
in (FStar_Syntax_Syntax.null_binder _157_175))
in (_157_176)::[])
in (let _157_177 = (FStar_Syntax_Syntax.mk_Total wp_a)
in (FStar_Syntax_Util.arrow _157_178 _157_177)))
in (

let expected_k = (let _157_185 = (let _157_183 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_182 = (let _157_181 = (FStar_Syntax_Syntax.mk_binder b)
in (let _157_180 = (let _157_179 = (FStar_Syntax_Syntax.null_binder b_wp_a)
in (_157_179)::[])
in (_157_181)::_157_180))
in (_157_183)::_157_182))
in (let _157_184 = (FStar_Syntax_Syntax.mk_Total wp_a)
in (FStar_Syntax_Util.arrow _157_185 _157_184)))
in (check_and_gen' env ed.FStar_Syntax_Syntax.close_wp expected_k))))
in (

let assert_p = (

let expected_k = (let _157_194 = (let _157_192 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_191 = (let _157_190 = (let _157_187 = (let _157_186 = (FStar_Syntax_Util.type_u ())
in (FStar_All.pipe_right _157_186 Prims.fst))
in (FStar_Syntax_Syntax.null_binder _157_187))
in (let _157_189 = (let _157_188 = (FStar_Syntax_Syntax.null_binder wp_a)
in (_157_188)::[])
in (_157_190)::_157_189))
in (_157_192)::_157_191))
in (let _157_193 = (FStar_Syntax_Syntax.mk_Total wp_a)
in (FStar_Syntax_Util.arrow _157_194 _157_193)))
in (check_and_gen' env ed.FStar_Syntax_Syntax.assert_p expected_k))
in (

let assume_p = (

let expected_k = (let _157_203 = (let _157_201 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_200 = (let _157_199 = (let _157_196 = (let _157_195 = (FStar_Syntax_Util.type_u ())
in (FStar_All.pipe_right _157_195 Prims.fst))
in (FStar_Syntax_Syntax.null_binder _157_196))
in (let _157_198 = (let _157_197 = (FStar_Syntax_Syntax.null_binder wp_a)
in (_157_197)::[])
in (_157_199)::_157_198))
in (_157_201)::_157_200))
in (let _157_202 = (FStar_Syntax_Syntax.mk_Total wp_a)
in (FStar_Syntax_Util.arrow _157_203 _157_202)))
in (check_and_gen' env ed.FStar_Syntax_Syntax.assume_p expected_k))
in (

let null_wp = (

let expected_k = (let _157_206 = (let _157_204 = (FStar_Syntax_Syntax.mk_binder a)
in (_157_204)::[])
in (let _157_205 = (FStar_Syntax_Syntax.mk_Total wp_a)
in (FStar_Syntax_Util.arrow _157_206 _157_205)))
in (check_and_gen' env ed.FStar_Syntax_Syntax.null_wp expected_k))
in (

let trivial_wp = (

let _60_223 = (FStar_Syntax_Util.type_u ())
in (match (_60_223) with
| (t, _60_222) -> begin
(

let expected_k = (let _157_211 = (let _157_209 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_208 = (let _157_207 = (FStar_Syntax_Syntax.null_binder wp_a)
in (_157_207)::[])
in (_157_209)::_157_208))
in (let _157_210 = (FStar_Syntax_Syntax.mk_GTotal t)
in (FStar_Syntax_Util.arrow _157_211 _157_210)))
in (check_and_gen' env ed.FStar_Syntax_Syntax.trivial expected_k))
end))
in (

let _60_367 = (match ((let _157_212 = (FStar_Syntax_Subst.compress ed.FStar_Syntax_Syntax.repr)
in _157_212.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_unknown -> begin
((ed.FStar_Syntax_Syntax.repr), (ed.FStar_Syntax_Syntax.bind_repr), (ed.FStar_Syntax_Syntax.return_repr), (ed.FStar_Syntax_Syntax.actions))
end
| _60_228 -> begin
(

let repr = (

let _60_232 = (FStar_Syntax_Util.type_u ())
in (match (_60_232) with
| (t, _60_231) -> begin
(

let expected_k = (let _157_217 = (let _157_215 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_214 = (let _157_213 = (FStar_Syntax_Syntax.null_binder wp_a)
in (_157_213)::[])
in (_157_215)::_157_214))
in (let _157_216 = (FStar_Syntax_Syntax.mk_GTotal t)
in (FStar_Syntax_Util.arrow _157_217 _157_216)))
in (tc_check_trivial_guard env ed.FStar_Syntax_Syntax.repr expected_k))
end))
in (

let mk_repr' = (fun t wp -> (

let repr = (FStar_TypeChecker_Normalize.normalize ((FStar_TypeChecker_Normalize.EraseUniverses)::(FStar_TypeChecker_Normalize.AllowUnboundUniverses)::[]) env repr)
in (let _157_227 = (let _157_226 = (let _157_225 = (let _157_224 = (FStar_Syntax_Syntax.as_arg t)
in (let _157_223 = (let _157_222 = (FStar_Syntax_Syntax.as_arg wp)
in (_157_222)::[])
in (_157_224)::_157_223))
in ((repr), (_157_225)))
in FStar_Syntax_Syntax.Tm_app (_157_226))
in (FStar_Syntax_Syntax.mk _157_227 None FStar_Range.dummyRange))))
in (

let mk_repr = (fun a wp -> (let _157_232 = (FStar_Syntax_Syntax.bv_to_name a)
in (mk_repr' _157_232 wp)))
in (

let destruct_repr = (fun t -> (match ((let _157_235 = (FStar_Syntax_Subst.compress t)
in _157_235.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_app (_60_245, ((t, _60_252))::((wp, _60_248))::[]) -> begin
((t), (wp))
end
| _60_258 -> begin
(FStar_All.failwith "Unexpected repr type")
end))
in (

let bind_repr = (

let r = (let _157_236 = (FStar_Syntax_Syntax.lid_as_fv FStar_Syntax_Const.range_0 FStar_Syntax_Syntax.Delta_constant None)
in (FStar_All.pipe_right _157_236 FStar_Syntax_Syntax.fv_to_tm))
in (

let _60_262 = (fresh_effect_signature ())
in (match (_60_262) with
| (b, wp_b) -> begin
(

let a_wp_b = (let _157_240 = (let _157_238 = (let _157_237 = (FStar_Syntax_Syntax.bv_to_name a)
in (FStar_Syntax_Syntax.null_binder _157_237))
in (_157_238)::[])
in (let _157_239 = (FStar_Syntax_Syntax.mk_Total wp_b)
in (FStar_Syntax_Util.arrow _157_240 _157_239)))
in (

let wp_f = (FStar_Syntax_Syntax.gen_bv "wp_f" None wp_a)
in (

let wp_g = (FStar_Syntax_Syntax.gen_bv "wp_g" None a_wp_b)
in (

let x_a = (let _157_241 = (FStar_Syntax_Syntax.bv_to_name a)
in (FStar_Syntax_Syntax.gen_bv "x_a" None _157_241))
in (

let wp_g_x = (let _157_245 = (FStar_Syntax_Syntax.bv_to_name wp_g)
in (let _157_244 = (let _157_243 = (let _157_242 = (FStar_Syntax_Syntax.bv_to_name x_a)
in (FStar_All.pipe_left FStar_Syntax_Syntax.as_arg _157_242))
in (_157_243)::[])
in (FStar_Syntax_Syntax.mk_Tm_app _157_245 _157_244 None FStar_Range.dummyRange)))
in (

let res = (

let wp = (let _157_257 = (let _157_246 = (FStar_TypeChecker_Env.inst_tscheme bind_wp)
in (FStar_All.pipe_right _157_246 Prims.snd))
in (let _157_256 = (let _157_255 = (let _157_254 = (let _157_253 = (FStar_Syntax_Syntax.bv_to_name a)
in (let _157_252 = (let _157_251 = (FStar_Syntax_Syntax.bv_to_name b)
in (let _157_250 = (let _157_249 = (FStar_Syntax_Syntax.bv_to_name wp_f)
in (let _157_248 = (let _157_247 = (FStar_Syntax_Syntax.bv_to_name wp_g)
in (_157_247)::[])
in (_157_249)::_157_248))
in (_157_251)::_157_250))
in (_157_253)::_157_252))
in (r)::_157_254)
in (FStar_List.map FStar_Syntax_Syntax.as_arg _157_255))
in (FStar_Syntax_Syntax.mk_Tm_app _157_257 _157_256 None FStar_Range.dummyRange)))
in (mk_repr b wp))
in (

let expected_k = (let _157_277 = (let _157_275 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_274 = (let _157_273 = (FStar_Syntax_Syntax.mk_binder b)
in (let _157_272 = (let _157_271 = (FStar_Syntax_Syntax.mk_binder wp_f)
in (let _157_270 = (let _157_269 = (let _157_259 = (let _157_258 = (FStar_Syntax_Syntax.bv_to_name wp_f)
in (mk_repr a _157_258))
in (FStar_Syntax_Syntax.null_binder _157_259))
in (let _157_268 = (let _157_267 = (FStar_Syntax_Syntax.mk_binder wp_g)
in (let _157_266 = (let _157_265 = (let _157_264 = (let _157_263 = (let _157_260 = (FStar_Syntax_Syntax.mk_binder x_a)
in (_157_260)::[])
in (let _157_262 = (let _157_261 = (mk_repr b wp_g_x)
in (FStar_All.pipe_left FStar_Syntax_Syntax.mk_Total _157_261))
in (FStar_Syntax_Util.arrow _157_263 _157_262)))
in (FStar_Syntax_Syntax.null_binder _157_264))
in (_157_265)::[])
in (_157_267)::_157_266))
in (_157_269)::_157_268))
in (_157_271)::_157_270))
in (_157_273)::_157_272))
in (_157_275)::_157_274))
in (let _157_276 = (FStar_Syntax_Syntax.mk_Total res)
in (FStar_Syntax_Util.arrow _157_277 _157_276)))
in (

let _60_276 = (FStar_TypeChecker_TcTerm.tc_tot_or_gtot_term env expected_k)
in (match (_60_276) with
| (expected_k, _60_273, _60_275) -> begin
(

let env = (FStar_TypeChecker_Env.set_range env (Prims.snd ed.FStar_Syntax_Syntax.bind_repr).FStar_Syntax_Syntax.pos)
in (

let env = (

let _60_278 = env
in {FStar_TypeChecker_Env.solver = _60_278.FStar_TypeChecker_Env.solver; FStar_TypeChecker_Env.range = _60_278.FStar_TypeChecker_Env.range; FStar_TypeChecker_Env.curmodule = _60_278.FStar_TypeChecker_Env.curmodule; FStar_TypeChecker_Env.gamma = _60_278.FStar_TypeChecker_Env.gamma; FStar_TypeChecker_Env.gamma_cache = _60_278.FStar_TypeChecker_Env.gamma_cache; FStar_TypeChecker_Env.modules = _60_278.FStar_TypeChecker_Env.modules; FStar_TypeChecker_Env.expected_typ = _60_278.FStar_TypeChecker_Env.expected_typ; FStar_TypeChecker_Env.sigtab = _60_278.FStar_TypeChecker_Env.sigtab; FStar_TypeChecker_Env.is_pattern = _60_278.FStar_TypeChecker_Env.is_pattern; FStar_TypeChecker_Env.instantiate_imp = _60_278.FStar_TypeChecker_Env.instantiate_imp; FStar_TypeChecker_Env.effects = _60_278.FStar_TypeChecker_Env.effects; FStar_TypeChecker_Env.generalize = _60_278.FStar_TypeChecker_Env.generalize; FStar_TypeChecker_Env.letrecs = _60_278.FStar_TypeChecker_Env.letrecs; FStar_TypeChecker_Env.top_level = _60_278.FStar_TypeChecker_Env.top_level; FStar_TypeChecker_Env.check_uvars = _60_278.FStar_TypeChecker_Env.check_uvars; FStar_TypeChecker_Env.use_eq = _60_278.FStar_TypeChecker_Env.use_eq; FStar_TypeChecker_Env.is_iface = _60_278.FStar_TypeChecker_Env.is_iface; FStar_TypeChecker_Env.admit = _60_278.FStar_TypeChecker_Env.admit; FStar_TypeChecker_Env.lax = true; FStar_TypeChecker_Env.lax_universes = _60_278.FStar_TypeChecker_Env.lax_universes; FStar_TypeChecker_Env.type_of = _60_278.FStar_TypeChecker_Env.type_of; FStar_TypeChecker_Env.universe_of = _60_278.FStar_TypeChecker_Env.universe_of; FStar_TypeChecker_Env.use_bv_sorts = _60_278.FStar_TypeChecker_Env.use_bv_sorts; FStar_TypeChecker_Env.qname_and_index = _60_278.FStar_TypeChecker_Env.qname_and_index})
in (

let br = (check_and_gen' env ed.FStar_Syntax_Syntax.bind_repr expected_k)
in br)))
end)))))))))
end)))
in (

let return_repr = (

let x_a = (let _157_278 = (FStar_Syntax_Syntax.bv_to_name a)
in (FStar_Syntax_Syntax.gen_bv "x_a" None _157_278))
in (

let res = (

let wp = (let _157_285 = (let _157_279 = (FStar_TypeChecker_Env.inst_tscheme return_wp)
in (FStar_All.pipe_right _157_279 Prims.snd))
in (let _157_284 = (let _157_283 = (let _157_282 = (FStar_Syntax_Syntax.bv_to_name a)
in (let _157_281 = (let _157_280 = (FStar_Syntax_Syntax.bv_to_name x_a)
in (_157_280)::[])
in (_157_282)::_157_281))
in (FStar_List.map FStar_Syntax_Syntax.as_arg _157_283))
in (FStar_Syntax_Syntax.mk_Tm_app _157_285 _157_284 None FStar_Range.dummyRange)))
in (mk_repr a wp))
in (

let expected_k = (let _157_290 = (let _157_288 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_287 = (let _157_286 = (FStar_Syntax_Syntax.mk_binder x_a)
in (_157_286)::[])
in (_157_288)::_157_287))
in (let _157_289 = (FStar_Syntax_Syntax.mk_Total res)
in (FStar_Syntax_Util.arrow _157_290 _157_289)))
in (

let _60_292 = (FStar_TypeChecker_TcTerm.tc_tot_or_gtot_term env expected_k)
in (match (_60_292) with
| (expected_k, _60_289, _60_291) -> begin
(

let env = (FStar_TypeChecker_Env.set_range env (Prims.snd ed.FStar_Syntax_Syntax.return_repr).FStar_Syntax_Syntax.pos)
in (

let _60_296 = (check_and_gen' env ed.FStar_Syntax_Syntax.return_repr expected_k)
in (match (_60_296) with
| (univs, repr) -> begin
(match (univs) with
| [] -> begin
(([]), (repr))
end
| _60_299 -> begin
(Prims.raise (FStar_Syntax_Syntax.Error ((("Unexpected universe-polymorphic return for effect"), (repr.FStar_Syntax_Syntax.pos)))))
end)
end)))
end)))))
in (

let actions = (

let check_action = (fun act -> (

let _60_307 = (FStar_TypeChecker_TcTerm.tc_tot_or_gtot_term env act.FStar_Syntax_Syntax.action_typ)
in (match (_60_307) with
| (act_typ, _60_305, g_t) -> begin
(

let env' = (FStar_TypeChecker_Env.set_expected_typ env act_typ)
in (

let _60_309 = if (FStar_TypeChecker_Env.debug env (FStar_Options.Other ("ED"))) then begin
(let _157_294 = (FStar_Syntax_Print.term_to_string act.FStar_Syntax_Syntax.action_defn)
in (let _157_293 = (FStar_Syntax_Print.term_to_string act_typ)
in (FStar_Util.print3 "Checking action %s:\n[definition]: %s\n[cps\'d type]: %s\n" (FStar_Ident.text_of_lid act.FStar_Syntax_Syntax.action_name) _157_294 _157_293)))
end else begin
()
end
in (

let _60_315 = (FStar_TypeChecker_TcTerm.tc_tot_or_gtot_term env' act.FStar_Syntax_Syntax.action_defn)
in (match (_60_315) with
| (act_defn, _60_313, g_a) -> begin
(

let act_defn = (FStar_TypeChecker_Normalize.normalize ((FStar_TypeChecker_Normalize.UnfoldUntil (FStar_Syntax_Syntax.Delta_constant))::[]) env act_defn)
in (

let act_typ = (FStar_TypeChecker_Normalize.normalize ((FStar_TypeChecker_Normalize.UnfoldUntil (FStar_Syntax_Syntax.Delta_constant))::(FStar_TypeChecker_Normalize.Eager_unfolding)::(FStar_TypeChecker_Normalize.Beta)::[]) env act_typ)
in (

let _60_338 = (

let act_typ = (FStar_Syntax_Subst.compress act_typ)
in (match (act_typ.FStar_Syntax_Syntax.n) with
| FStar_Syntax_Syntax.Tm_arrow (bs, c) -> begin
(

let _60_326 = (FStar_Syntax_Subst.open_comp bs c)
in (match (_60_326) with
| (bs, _60_325) -> begin
(

let res = (mk_repr' FStar_Syntax_Syntax.tun FStar_Syntax_Syntax.tun)
in (

let k = (let _157_295 = (FStar_Syntax_Syntax.mk_Total res)
in (FStar_Syntax_Util.arrow bs _157_295))
in (

let _60_333 = (FStar_TypeChecker_TcTerm.tc_tot_or_gtot_term env k)
in (match (_60_333) with
| (k, _60_331, g) -> begin
((k), (g))
end))))
end))
end
| _60_335 -> begin
(let _157_300 = (let _157_299 = (let _157_298 = (let _157_297 = (FStar_Syntax_Print.term_to_string act_typ)
in (let _157_296 = (FStar_Syntax_Print.tag_of_term act_typ)
in (FStar_Util.format2 "Actions must have function types (not: %s, a.k.a. %s)" _157_297 _157_296)))
in ((_157_298), (act_defn.FStar_Syntax_Syntax.pos)))
in FStar_Syntax_Syntax.Error (_157_299))
in (Prims.raise _157_300))
end))
in (match (_60_338) with
| (expected_k, g_k) -> begin
(

let g = (FStar_TypeChecker_Rel.teq env act_typ expected_k)
in (

let _60_340 = (let _157_303 = (let _157_302 = (let _157_301 = (FStar_TypeChecker_Rel.conj_guard g_t g)
in (FStar_TypeChecker_Rel.conj_guard g_k _157_301))
in (FStar_TypeChecker_Rel.conj_guard g_a _157_302))
in (FStar_TypeChecker_Rel.force_trivial_guard env _157_303))
in (

let act_typ = (match ((let _157_304 = (FStar_Syntax_Subst.compress expected_k)
in _157_304.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (bs, c) -> begin
(

let _60_348 = (FStar_Syntax_Subst.open_comp bs c)
in (match (_60_348) with
| (bs, c) -> begin
(

let _60_351 = (destruct_repr (FStar_Syntax_Util.comp_result c))
in (match (_60_351) with
| (a, wp) -> begin
(

let c = (let _157_308 = (let _157_305 = (env.FStar_TypeChecker_Env.universe_of env a)
in (_157_305)::[])
in (let _157_307 = (let _157_306 = (FStar_Syntax_Syntax.as_arg wp)
in (_157_306)::[])
in {FStar_Syntax_Syntax.comp_univs = _157_308; FStar_Syntax_Syntax.effect_name = ed.FStar_Syntax_Syntax.mname; FStar_Syntax_Syntax.result_typ = a; FStar_Syntax_Syntax.effect_args = _157_307; FStar_Syntax_Syntax.flags = []}))
in (let _157_309 = (FStar_Syntax_Syntax.mk_Comp c)
in (FStar_Syntax_Util.arrow bs _157_309)))
end))
end))
end
| _60_354 -> begin
(FStar_All.failwith "")
end)
in (

let _60_358 = (FStar_TypeChecker_Util.generalize_universes env act_defn)
in (match (_60_358) with
| (univs, act_defn) -> begin
(

let act_typ = (FStar_TypeChecker_Normalize.normalize ((FStar_TypeChecker_Normalize.Beta)::[]) env act_typ)
in (

let _60_360 = act
in {FStar_Syntax_Syntax.action_name = _60_360.FStar_Syntax_Syntax.action_name; FStar_Syntax_Syntax.action_unqualified_name = _60_360.FStar_Syntax_Syntax.action_unqualified_name; FStar_Syntax_Syntax.action_univs = univs; FStar_Syntax_Syntax.action_defn = act_defn; FStar_Syntax_Syntax.action_typ = act_typ}))
end)))))
end))))
end))))
end)))
in (FStar_All.pipe_right ed.FStar_Syntax_Syntax.actions (FStar_List.map check_action)))
in ((repr), (bind_repr), (return_repr), (actions)))))))))
end)
in (match (_60_367) with
| (repr, bind_repr, return_repr, actions) -> begin
(

let t = (let _157_310 = (FStar_Syntax_Syntax.mk_Total ed.FStar_Syntax_Syntax.signature)
in (FStar_Syntax_Util.arrow ed.FStar_Syntax_Syntax.binders _157_310))
in (

let _60_371 = (FStar_TypeChecker_Util.generalize_universes env0 t)
in (match (_60_371) with
| (univs, t) -> begin
(

let signature = (match ((let _157_312 = (let _157_311 = (FStar_Syntax_Subst.compress t)
in _157_311.FStar_Syntax_Syntax.n)
in ((effect_params), (_157_312)))) with
| ([], _60_374) -> begin
t
end
| (_60_377, FStar_Syntax_Syntax.Tm_arrow (_60_379, c)) -> begin
(FStar_Syntax_Util.comp_result c)
end
| _60_385 -> begin
(FStar_All.failwith "Impossible")
end)
in (

let close = (fun n ts -> (

let ts = (let _157_317 = (FStar_Syntax_Subst.close_tscheme effect_params ts)
in (FStar_Syntax_Subst.close_univ_vars_tscheme univs _157_317))
in (

let m = (FStar_List.length (Prims.fst ts))
in (

let _60_393 = if (((n >= (Prims.parse_int "0")) && (not ((FStar_Syntax_Util.is_unknown (Prims.snd ts))))) && (m <> n)) then begin
(

let error = if (m < n) then begin
"not universe-polymorphic enough"
end else begin
"too universe-polymorphic"
end
in (let _157_320 = (let _157_319 = (FStar_Util.string_of_int n)
in (let _157_318 = (FStar_Syntax_Print.tscheme_to_string ts)
in (FStar_Util.format3 "The effect combinator is %s (n=%s) (%s)" error _157_319 _157_318)))
in (FStar_All.failwith _157_320)))
end else begin
()
end
in ts))))
in (

let close_action = (fun act -> (

let _60_399 = (close (~- ((Prims.parse_int "1"))) ((act.FStar_Syntax_Syntax.action_univs), (act.FStar_Syntax_Syntax.action_defn)))
in (match (_60_399) with
| (univs, defn) -> begin
(

let _60_402 = (close (~- ((Prims.parse_int "1"))) ((act.FStar_Syntax_Syntax.action_univs), (act.FStar_Syntax_Syntax.action_typ)))
in (match (_60_402) with
| (univs', typ) -> begin
(

let _60_403 = ()
in (

let _60_405 = act
in {FStar_Syntax_Syntax.action_name = _60_405.FStar_Syntax_Syntax.action_name; FStar_Syntax_Syntax.action_unqualified_name = _60_405.FStar_Syntax_Syntax.action_unqualified_name; FStar_Syntax_Syntax.action_univs = univs; FStar_Syntax_Syntax.action_defn = defn; FStar_Syntax_Syntax.action_typ = typ}))
end))
end)))
in (

let nunivs = (FStar_List.length univs)
in (

let _60_408 = ()
in (

let ed = (

let _60_410 = ed
in (let _157_337 = (close (Prims.parse_int "0") return_wp)
in (let _157_336 = (close (Prims.parse_int "1") bind_wp)
in (let _157_335 = (close (Prims.parse_int "0") if_then_else)
in (let _157_334 = (close (Prims.parse_int "0") ite_wp)
in (let _157_333 = (close (Prims.parse_int "0") stronger)
in (let _157_332 = (close (Prims.parse_int "1") close_wp)
in (let _157_331 = (close (Prims.parse_int "0") assert_p)
in (let _157_330 = (close (Prims.parse_int "0") assume_p)
in (let _157_329 = (close (Prims.parse_int "0") null_wp)
in (let _157_328 = (close (Prims.parse_int "0") trivial_wp)
in (let _157_327 = (let _157_323 = (close (Prims.parse_int "0") (([]), (repr)))
in (Prims.snd _157_323))
in (let _157_326 = (close (Prims.parse_int "0") return_repr)
in (let _157_325 = (close (Prims.parse_int "1") bind_repr)
in (let _157_324 = (FStar_List.map close_action actions)
in {FStar_Syntax_Syntax.qualifiers = _60_410.FStar_Syntax_Syntax.qualifiers; FStar_Syntax_Syntax.cattributes = _60_410.FStar_Syntax_Syntax.cattributes; FStar_Syntax_Syntax.mname = _60_410.FStar_Syntax_Syntax.mname; FStar_Syntax_Syntax.univs = univs; FStar_Syntax_Syntax.binders = effect_params; FStar_Syntax_Syntax.signature = signature; FStar_Syntax_Syntax.ret_wp = _157_337; FStar_Syntax_Syntax.bind_wp = _157_336; FStar_Syntax_Syntax.if_then_else = _157_335; FStar_Syntax_Syntax.ite_wp = _157_334; FStar_Syntax_Syntax.stronger = _157_333; FStar_Syntax_Syntax.close_wp = _157_332; FStar_Syntax_Syntax.assert_p = _157_331; FStar_Syntax_Syntax.assume_p = _157_330; FStar_Syntax_Syntax.null_wp = _157_329; FStar_Syntax_Syntax.trivial = _157_328; FStar_Syntax_Syntax.repr = _157_327; FStar_Syntax_Syntax.return_repr = _157_326; FStar_Syntax_Syntax.bind_repr = _157_325; FStar_Syntax_Syntax.actions = _157_324})))))))))))))))
in (

let _60_413 = if ((FStar_TypeChecker_Env.debug env FStar_Options.Low) || (FStar_All.pipe_left (FStar_TypeChecker_Env.debug env) (FStar_Options.Other ("ED")))) then begin
(let _157_338 = (FStar_Syntax_Print.eff_decl_to_string false ed)
in (FStar_Util.print_string _157_338))
end else begin
()
end
in ed)))))))
end)))
end))))))))))))))))
end)))))
end))
end))
end))))
and cps_and_elaborate : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.eff_decl  ->  (FStar_Syntax_Syntax.sigelt Prims.list * FStar_Syntax_Syntax.eff_decl * FStar_Syntax_Syntax.sigelt Prims.option) = (fun env ed -> (

let _60_419 = (FStar_Syntax_Subst.open_term ed.FStar_Syntax_Syntax.binders ed.FStar_Syntax_Syntax.signature)
in (match (_60_419) with
| (effect_binders_un, signature_un) -> begin
(

let _60_424 = (tc_tparams env effect_binders_un)
in (match (_60_424) with
| (effect_binders, env, _60_423) -> begin
(

let _60_428 = (FStar_TypeChecker_TcTerm.tc_trivial_guard env signature_un)
in (match (_60_428) with
| (signature, _60_427) -> begin
(

let effect_binders = (FStar_List.map (fun _60_431 -> (match (_60_431) with
| (bv, qual) -> begin
(let _157_343 = (

let _60_432 = bv
in (let _157_342 = (FStar_TypeChecker_Normalize.normalize ((FStar_TypeChecker_Normalize.EraseUniverses)::[]) env bv.FStar_Syntax_Syntax.sort)
in {FStar_Syntax_Syntax.ppname = _60_432.FStar_Syntax_Syntax.ppname; FStar_Syntax_Syntax.index = _60_432.FStar_Syntax_Syntax.index; FStar_Syntax_Syntax.sort = _157_342}))
in ((_157_343), (qual)))
end)) effect_binders)
in (

let _60_447 = (match ((let _157_344 = (FStar_Syntax_Subst.compress signature_un)
in _157_344.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (((a, _60_437))::[], effect_marker) -> begin
((a), (effect_marker))
end
| _60_444 -> begin
(FStar_All.failwith "bad shape for effect-for-free signature")
end)
in (match (_60_447) with
| (a, effect_marker) -> begin
(

let a = if (FStar_Syntax_Syntax.is_null_bv a) then begin
(let _157_346 = (let _157_345 = (FStar_Syntax_Syntax.range_of_bv a)
in Some (_157_345))
in (FStar_Syntax_Syntax.gen_bv "a" _157_346 a.FStar_Syntax_Syntax.sort))
end else begin
a
end
in (

let open_and_check = (fun t -> (

let subst = (FStar_Syntax_Subst.opening_of_binders effect_binders)
in (

let t = (FStar_Syntax_Subst.subst subst t)
in (

let _60_457 = (FStar_TypeChecker_TcTerm.tc_term env t)
in (match (_60_457) with
| (t, comp, _60_456) -> begin
((t), (comp))
end)))))
in (

let mk = (fun x -> (FStar_Syntax_Syntax.mk x None signature.FStar_Syntax_Syntax.pos))
in (

let _60_462 = (open_and_check ed.FStar_Syntax_Syntax.repr)
in (match (_60_462) with
| (repr, _comp) -> begin
(

let _60_463 = if (FStar_TypeChecker_Env.debug env (FStar_Options.Other ("ED"))) then begin
(let _157_351 = (FStar_Syntax_Print.term_to_string repr)
in (FStar_Util.print1 "Representation is: %s\n" _157_351))
end else begin
()
end
in (

let dmff_env = (FStar_TypeChecker_DMFF.empty env (FStar_TypeChecker_TcTerm.tc_constant FStar_Range.dummyRange))
in (

let wp_type = (FStar_TypeChecker_DMFF.star_type dmff_env repr)
in (

let wp_type = (recheck_debug "*" env wp_type)
in (

let wp_a = (let _157_358 = (let _157_357 = (let _157_356 = (let _157_355 = (let _157_354 = (let _157_353 = (FStar_Syntax_Syntax.bv_to_name a)
in (let _157_352 = (FStar_Syntax_Syntax.as_implicit false)
in ((_157_353), (_157_352))))
in (_157_354)::[])
in ((wp_type), (_157_355)))
in FStar_Syntax_Syntax.Tm_app (_157_356))
in (mk _157_357))
in (FStar_TypeChecker_Normalize.normalize ((FStar_TypeChecker_Normalize.Beta)::[]) env _157_358))
in (

let effect_signature = (

let binders = (let _157_363 = (let _157_359 = (FStar_Syntax_Syntax.as_implicit false)
in ((a), (_157_359)))
in (let _157_362 = (let _157_361 = (let _157_360 = (FStar_Syntax_Syntax.gen_bv "dijkstra_wp" None wp_a)
in (FStar_All.pipe_right _157_360 FStar_Syntax_Syntax.mk_binder))
in (_157_361)::[])
in (_157_363)::_157_362))
in (

let binders = (FStar_Syntax_Subst.close_binders binders)
in (mk (FStar_Syntax_Syntax.Tm_arrow (((binders), (effect_marker)))))))
in (

let effect_signature = (recheck_debug "turned into the effect signature" env effect_signature)
in (

let sigelts = (FStar_ST.alloc [])
in (

let mk_lid = (fun name -> (FStar_Ident.lid_of_path (FStar_Ident.path_of_text (Prims.strcat (FStar_Ident.text_of_lid ed.FStar_Syntax_Syntax.mname) (Prims.strcat "_" name))) FStar_Range.dummyRange))
in (

let elaborate_and_star = (fun dmff_env item -> (

let _60_481 = item
in (match (_60_481) with
| (u_item, item) -> begin
(

let _60_484 = (open_and_check item)
in (match (_60_484) with
| (item, item_comp) -> begin
(

let _60_485 = if (not ((FStar_Syntax_Util.is_total_lcomp item_comp))) then begin
(let _157_373 = (let _157_372 = (let _157_371 = (FStar_Syntax_Print.term_to_string item)
in (let _157_370 = (FStar_Syntax_Print.lcomp_to_string item_comp)
in (FStar_Util.format2 "Computation for [%s] is not total : %s !" _157_371 _157_370)))
in FStar_Syntax_Syntax.Err (_157_372))
in (Prims.raise _157_373))
end else begin
()
end
in (

let _60_490 = (FStar_TypeChecker_DMFF.star_expr dmff_env item)
in (match (_60_490) with
| (item_t, item_wp, item_elab) -> begin
(

let item_wp = (recheck_debug "*" env item_wp)
in (

let item_elab = (recheck_debug "_" env item_elab)
in ((dmff_env), (item_t), (item_wp), (item_elab))))
end)))
end))
end)))
in (

let _60_498 = (elaborate_and_star dmff_env ed.FStar_Syntax_Syntax.bind_repr)
in (match (_60_498) with
| (dmff_env, _60_495, bind_wp, bind_elab) -> begin
(

let _60_504 = (elaborate_and_star dmff_env ed.FStar_Syntax_Syntax.return_repr)
in (match (_60_504) with
| (dmff_env, _60_501, return_wp, return_elab) -> begin
(

let lift_from_pure_wp = (match ((let _157_374 = (FStar_Syntax_Subst.compress return_wp)
in _157_374.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_abs ((b1)::(b2)::bs, body, what) -> begin
(

let _60_524 = (match ((let _157_375 = (FStar_Syntax_Util.abs bs body None)
in (FStar_Syntax_Subst.open_term ((b1)::(b2)::[]) _157_375))) with
| ((b1)::(b2)::[], body) -> begin
((b1), (b2), (body))
end
| _60_520 -> begin
(FStar_All.failwith "Impossible : open_term not preserving binders arity")
end)
in (match (_60_524) with
| (b1, b2, body) -> begin
(

let env0 = (FStar_TypeChecker_Env.push_binders (FStar_TypeChecker_DMFF.get_env dmff_env) ((b1)::(b2)::[]))
in (

let wp_b1 = (let _157_382 = (let _157_381 = (let _157_380 = (let _157_379 = (let _157_378 = (let _157_377 = (FStar_Syntax_Syntax.bv_to_name (Prims.fst b1))
in (let _157_376 = (FStar_Syntax_Syntax.as_implicit false)
in ((_157_377), (_157_376))))
in (_157_378)::[])
in ((wp_type), (_157_379)))
in FStar_Syntax_Syntax.Tm_app (_157_380))
in (mk _157_381))
in (FStar_TypeChecker_Normalize.normalize ((FStar_TypeChecker_Normalize.Beta)::[]) env0 _157_382))
in (

let _60_530 = (let _157_384 = (let _157_383 = (FStar_Syntax_Util.unascribe wp_b1)
in (FStar_TypeChecker_Normalize.eta_expand_with_type body _157_383))
in (FStar_All.pipe_left FStar_Syntax_Util.abs_formals _157_384))
in (match (_60_530) with
| (bs, body, what') -> begin
(

let t2 = (Prims.fst b2).FStar_Syntax_Syntax.sort
in (

let pure_wp_type = (FStar_TypeChecker_DMFF.double_star t2)
in (

let wp = (FStar_Syntax_Syntax.gen_bv "wp" None pure_wp_type)
in (

let body = (let _157_388 = (FStar_Syntax_Syntax.bv_to_name wp)
in (let _157_387 = (let _157_386 = (let _157_385 = (FStar_Syntax_Util.abs ((b2)::[]) body what')
in ((_157_385), (None)))
in (_157_386)::[])
in (FStar_Syntax_Syntax.mk_Tm_app _157_388 _157_387 None FStar_Range.dummyRange)))
in (let _157_392 = (let _157_390 = (let _157_389 = (FStar_Syntax_Syntax.mk_binder wp)
in (_157_389)::[])
in (b1)::_157_390)
in (let _157_391 = (FStar_Syntax_Util.abs bs body what)
in (FStar_Syntax_Util.abs _157_392 _157_391 (Some (FStar_Util.Inr (((FStar_Syntax_Const.effect_GTot_lid), ([]))))))))))))
end))))
end))
end
| _60_536 -> begin
(FStar_All.failwith "unexpected shape for return")
end)
in (

let return_wp = (match ((let _157_393 = (FStar_Syntax_Subst.compress return_wp)
in _157_393.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_abs ((b1)::(b2)::bs, body, what) -> begin
(let _157_394 = (FStar_Syntax_Util.abs bs body what)
in (FStar_Syntax_Util.abs ((b1)::(b2)::[]) _157_394 (Some (FStar_Util.Inr (((FStar_Syntax_Const.effect_GTot_lid), ([])))))))
end
| _60_548 -> begin
(FStar_All.failwith "unexpected shape for return")
end)
in (

let bind_wp = (match ((let _157_395 = (FStar_Syntax_Subst.compress bind_wp)
in _157_395.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_abs (binders, body, what) -> begin
(

let r = (FStar_Syntax_Syntax.lid_as_fv FStar_Syntax_Const.range_lid (FStar_Syntax_Syntax.Delta_defined_at_level ((Prims.parse_int "1"))) None)
in (let _157_399 = (let _157_398 = (let _157_397 = (let _157_396 = (mk (FStar_Syntax_Syntax.Tm_fvar (r)))
in (FStar_Syntax_Syntax.null_binder _157_396))
in (_157_397)::[])
in (FStar_List.append _157_398 binders))
in (FStar_Syntax_Util.abs _157_399 body what)))
end
| _60_557 -> begin
(FStar_All.failwith "unexpected shape for bind")
end)
in (

let apply_close = (fun t -> if ((FStar_List.length effect_binders) = (Prims.parse_int "0")) then begin
t
end else begin
(let _157_406 = (let _157_405 = (let _157_404 = (let _157_403 = (let _157_402 = (FStar_Syntax_Util.args_of_binders effect_binders)
in (Prims.snd _157_402))
in ((t), (_157_403)))
in FStar_Syntax_Syntax.Tm_app (_157_404))
in (mk _157_405))
in (FStar_Syntax_Subst.close effect_binders _157_406))
end)
in (

let register = (fun name item -> (

let _60_566 = (let _157_412 = (mk_lid name)
in (let _157_411 = (FStar_Syntax_Util.abs effect_binders item None)
in (FStar_TypeChecker_Util.mk_toplevel_definition env _157_412 _157_411)))
in (match (_60_566) with
| (sigelt, fv) -> begin
(

let _60_567 = (let _157_414 = (let _157_413 = (FStar_ST.read sigelts)
in (sigelt)::_157_413)
in (FStar_ST.op_Colon_Equals sigelts _157_414))
in fv)
end)))
in (

let lift_from_pure_wp = (register "lift_from_pure" lift_from_pure_wp)
in (

let return_wp = (register "return_wp" return_wp)
in (

let _60_571 = (let _157_416 = (let _157_415 = (FStar_ST.read sigelts)
in (FStar_Syntax_Syntax.Sig_pragma (((FStar_Syntax_Syntax.SetOptions ("--admit_smt_queries true")), (FStar_Range.dummyRange))))::_157_415)
in (FStar_ST.op_Colon_Equals sigelts _157_416))
in (

let return_elab = (register "return_elab" return_elab)
in (

let _60_574 = (let _157_418 = (let _157_417 = (FStar_ST.read sigelts)
in (FStar_Syntax_Syntax.Sig_pragma (((FStar_Syntax_Syntax.SetOptions ("--admit_smt_queries false")), (FStar_Range.dummyRange))))::_157_417)
in (FStar_ST.op_Colon_Equals sigelts _157_418))
in (

let bind_wp = (register "bind_wp" bind_wp)
in (

let _60_577 = (let _157_420 = (let _157_419 = (FStar_ST.read sigelts)
in (FStar_Syntax_Syntax.Sig_pragma (((FStar_Syntax_Syntax.SetOptions ("--admit_smt_queries true")), (FStar_Range.dummyRange))))::_157_419)
in (FStar_ST.op_Colon_Equals sigelts _157_420))
in (

let bind_elab = (register "bind_elab" bind_elab)
in (

let _60_580 = (let _157_422 = (let _157_421 = (FStar_ST.read sigelts)
in (FStar_Syntax_Syntax.Sig_pragma (((FStar_Syntax_Syntax.SetOptions ("--admit_smt_queries false")), (FStar_Range.dummyRange))))::_157_421)
in (FStar_ST.op_Colon_Equals sigelts _157_422))
in (

let _60_599 = (FStar_List.fold_left (fun _60_584 action -> (match (_60_584) with
| (dmff_env, actions) -> begin
(

let _60_590 = (elaborate_and_star dmff_env ((action.FStar_Syntax_Syntax.action_univs), (action.FStar_Syntax_Syntax.action_defn)))
in (match (_60_590) with
| (dmff_env, action_t, action_wp, action_elab) -> begin
(

let name = action.FStar_Syntax_Syntax.action_name.FStar_Ident.ident.FStar_Ident.idText
in (

let action_typ_with_wp = (FStar_TypeChecker_DMFF.trans_F dmff_env action_t action_wp)
in (

let action_elab = (register (Prims.strcat name "_elab") action_elab)
in (

let action_typ_with_wp = (register (Prims.strcat name "_complete_type") action_typ_with_wp)
in (let _157_428 = (let _157_427 = (

let _60_595 = action
in (let _157_426 = (apply_close action_elab)
in (let _157_425 = (apply_close action_typ_with_wp)
in {FStar_Syntax_Syntax.action_name = _60_595.FStar_Syntax_Syntax.action_name; FStar_Syntax_Syntax.action_unqualified_name = _60_595.FStar_Syntax_Syntax.action_unqualified_name; FStar_Syntax_Syntax.action_univs = _60_595.FStar_Syntax_Syntax.action_univs; FStar_Syntax_Syntax.action_defn = _157_426; FStar_Syntax_Syntax.action_typ = _157_425})))
in (_157_427)::actions)
in ((dmff_env), (_157_428)))))))
end))
end)) ((dmff_env), ([])) ed.FStar_Syntax_Syntax.actions)
in (match (_60_599) with
| (dmff_env, actions) -> begin
(

let actions = (FStar_List.rev actions)
in (

let repr = (

let wp = (FStar_Syntax_Syntax.gen_bv "wp_a" None wp_a)
in (

let binders = (let _157_431 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_430 = (let _157_429 = (FStar_Syntax_Syntax.mk_binder wp)
in (_157_429)::[])
in (_157_431)::_157_430))
in (let _157_440 = (let _157_439 = (let _157_437 = (let _157_436 = (let _157_435 = (let _157_434 = (let _157_433 = (FStar_Syntax_Syntax.bv_to_name a)
in (let _157_432 = (FStar_Syntax_Syntax.as_implicit false)
in ((_157_433), (_157_432))))
in (_157_434)::[])
in ((repr), (_157_435)))
in FStar_Syntax_Syntax.Tm_app (_157_436))
in (mk _157_437))
in (let _157_438 = (FStar_Syntax_Syntax.bv_to_name wp)
in (FStar_TypeChecker_DMFF.trans_F dmff_env _157_439 _157_438)))
in (FStar_Syntax_Util.abs binders _157_440 None))))
in (

let repr = (recheck_debug "FC" env repr)
in (

let repr = (register "repr" repr)
in (

let _60_650 = (match ((let _157_442 = (let _157_441 = (FStar_Syntax_Subst.compress wp_type)
in (FStar_All.pipe_left FStar_Syntax_Util.unascribe _157_441))
in _157_442.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_abs ((type_param)::effect_param, arrow, _60_611) -> begin
(

let _60_624 = (match ((FStar_Syntax_Subst.open_term ((type_param)::effect_param) arrow)) with
| ((b)::bs, body) -> begin
((b), (bs), (body))
end
| _60_620 -> begin
(FStar_All.failwith "Impossible : open_term nt preserving binders arity")
end)
in (match (_60_624) with
| (type_param, effect_param, arrow) -> begin
(match ((let _157_444 = (let _157_443 = (FStar_Syntax_Subst.compress arrow)
in (FStar_All.pipe_left FStar_Syntax_Util.unascribe _157_443))
in _157_444.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (wp_binders, c) -> begin
(

let _60_631 = (FStar_Syntax_Subst.open_comp wp_binders c)
in (match (_60_631) with
| (wp_binders, c) -> begin
(

let _60_638 = (FStar_List.partition (fun _60_635 -> (match (_60_635) with
| (bv, _60_634) -> begin
(let _157_447 = (let _157_446 = (FStar_Syntax_Free.names bv.FStar_Syntax_Syntax.sort)
in (FStar_All.pipe_right _157_446 (FStar_Util.set_mem (Prims.fst type_param))))
in (FStar_All.pipe_right _157_447 Prims.op_Negation))
end)) wp_binders)
in (match (_60_638) with
| (pre_args, post_args) -> begin
(

let post = (match (post_args) with
| (post)::[] -> begin
post
end
| _60_642 -> begin
(let _157_449 = (let _157_448 = (FStar_Syntax_Print.term_to_string arrow)
in (FStar_Util.format1 "Impossible: multiple post candidates %s" _157_448))
in (FStar_All.failwith _157_449))
end)
in (let _157_451 = (FStar_Syntax_Util.arrow pre_args c)
in (let _157_450 = (FStar_Syntax_Util.abs ((type_param)::effect_param) (Prims.fst post).FStar_Syntax_Syntax.sort None)
in ((_157_451), (_157_450)))))
end))
end))
end
| _60_645 -> begin
(let _157_453 = (let _157_452 = (FStar_Syntax_Print.term_to_string arrow)
in (FStar_Util.format1 "Impossible: pre/post arrow %s" _157_452))
in (FStar_All.failwith _157_453))
end)
end))
end
| _60_647 -> begin
(let _157_455 = (let _157_454 = (FStar_Syntax_Print.term_to_string wp_type)
in (FStar_Util.format1 "Impossible: pre/post abs %s" _157_454))
in (FStar_All.failwith _157_455))
end)
in (match (_60_650) with
| (pre, post) -> begin
(

let _60_651 = (let _157_456 = (register "pre" pre)
in (Prims.ignore _157_456))
in (

let _60_653 = (let _157_457 = (register "post" post)
in (Prims.ignore _157_457))
in (

let _60_655 = (let _157_458 = (register "wp" wp_type)
in (Prims.ignore _157_458))
in (

let ed = (

let _60_657 = ed
in (let _157_469 = (FStar_Syntax_Subst.close_binders effect_binders)
in (let _157_468 = (FStar_Syntax_Subst.close effect_binders effect_signature)
in (let _157_467 = (let _157_459 = (apply_close return_wp)
in (([]), (_157_459)))
in (let _157_466 = (let _157_460 = (apply_close bind_wp)
in (([]), (_157_460)))
in (let _157_465 = (apply_close repr)
in (let _157_464 = (let _157_461 = (apply_close return_elab)
in (([]), (_157_461)))
in (let _157_463 = (let _157_462 = (apply_close bind_elab)
in (([]), (_157_462)))
in {FStar_Syntax_Syntax.qualifiers = _60_657.FStar_Syntax_Syntax.qualifiers; FStar_Syntax_Syntax.cattributes = _60_657.FStar_Syntax_Syntax.cattributes; FStar_Syntax_Syntax.mname = _60_657.FStar_Syntax_Syntax.mname; FStar_Syntax_Syntax.univs = _60_657.FStar_Syntax_Syntax.univs; FStar_Syntax_Syntax.binders = _157_469; FStar_Syntax_Syntax.signature = _157_468; FStar_Syntax_Syntax.ret_wp = _157_467; FStar_Syntax_Syntax.bind_wp = _157_466; FStar_Syntax_Syntax.if_then_else = _60_657.FStar_Syntax_Syntax.if_then_else; FStar_Syntax_Syntax.ite_wp = _60_657.FStar_Syntax_Syntax.ite_wp; FStar_Syntax_Syntax.stronger = _60_657.FStar_Syntax_Syntax.stronger; FStar_Syntax_Syntax.close_wp = _60_657.FStar_Syntax_Syntax.close_wp; FStar_Syntax_Syntax.assert_p = _60_657.FStar_Syntax_Syntax.assert_p; FStar_Syntax_Syntax.assume_p = _60_657.FStar_Syntax_Syntax.assume_p; FStar_Syntax_Syntax.null_wp = _60_657.FStar_Syntax_Syntax.null_wp; FStar_Syntax_Syntax.trivial = _60_657.FStar_Syntax_Syntax.trivial; FStar_Syntax_Syntax.repr = _157_465; FStar_Syntax_Syntax.return_repr = _157_464; FStar_Syntax_Syntax.bind_repr = _157_463; FStar_Syntax_Syntax.actions = actions}))))))))
in (

let _60_662 = (FStar_TypeChecker_DMFF.gen_wps_for_free env effect_binders a wp_a ed)
in (match (_60_662) with
| (sigelts', ed) -> begin
(

let _60_663 = if (FStar_TypeChecker_Env.debug env (FStar_Options.Other ("ED"))) then begin
(let _157_470 = (FStar_Syntax_Print.eff_decl_to_string true ed)
in (FStar_Util.print_string _157_470))
end else begin
()
end
in (

let lift_from_pure_opt = if ((FStar_List.length effect_binders) = (Prims.parse_int "0")) then begin
(

let lift_from_pure = (let _157_473 = (let _157_472 = (let _157_471 = (apply_close lift_from_pure_wp)
in (([]), (_157_471)))
in Some (_157_472))
in {FStar_Syntax_Syntax.source = FStar_Syntax_Const.effect_PURE_lid; FStar_Syntax_Syntax.target = ed.FStar_Syntax_Syntax.mname; FStar_Syntax_Syntax.lift_wp = _157_473; FStar_Syntax_Syntax.lift = None})
in Some (FStar_Syntax_Syntax.Sig_sub_effect (((lift_from_pure), (FStar_Range.dummyRange)))))
end else begin
None
end
in (let _157_476 = (let _157_475 = (let _157_474 = (FStar_ST.read sigelts)
in (FStar_List.rev _157_474))
in (FStar_List.append _157_475 sigelts'))
in ((_157_476), (ed), (lift_from_pure_opt)))))
end))))))
end))))))
end))))))))))))))))
end))
end))))))))))))
end)))))
end)))
end))
end))
end)))
and tc_lex_t : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.sigelt Prims.list  ->  FStar_Syntax_Syntax.qualifier Prims.list  ->  FStar_Ident.lident Prims.list  ->  FStar_Syntax_Syntax.sigelt = (fun env ses quals lids -> (

let _60_671 = ()
in (

let _60_679 = ()
in (match (ses) with
| (FStar_Syntax_Syntax.Sig_inductive_typ (lex_t, [], [], t, _60_708, _60_710, [], r))::(FStar_Syntax_Syntax.Sig_datacon (lex_top, [], _t_top, _lex_t_top, _157_481, [], _60_699, r1))::(FStar_Syntax_Syntax.Sig_datacon (lex_cons, [], _t_cons, _lex_t_cons, _157_482, [], _60_688, r2))::[] when (((_157_481 = (Prims.parse_int "0")) && (_157_482 = (Prims.parse_int "0"))) && (((FStar_Ident.lid_equals lex_t FStar_Syntax_Const.lex_t_lid) && (FStar_Ident.lid_equals lex_top FStar_Syntax_Const.lextop_lid)) && (FStar_Ident.lid_equals lex_cons FStar_Syntax_Const.lexcons_lid))) -> begin
(

let u = (FStar_Syntax_Syntax.new_univ_name (Some (r)))
in (

let t = (FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_type (FStar_Syntax_Syntax.U_name (u))) None r)
in (

let t = (FStar_Syntax_Subst.close_univ_vars ((u)::[]) t)
in (

let tc = FStar_Syntax_Syntax.Sig_inductive_typ (((lex_t), ((u)::[]), ([]), (t), ([]), ((FStar_Syntax_Const.lextop_lid)::(FStar_Syntax_Const.lexcons_lid)::[]), ([]), (r)))
in (

let utop = (FStar_Syntax_Syntax.new_univ_name (Some (r1)))
in (

let lex_top_t = (let _157_485 = (let _157_484 = (let _157_483 = (FStar_Syntax_Syntax.fvar (FStar_Ident.set_lid_range FStar_Syntax_Const.lex_t_lid r1) FStar_Syntax_Syntax.Delta_constant None)
in ((_157_483), ((FStar_Syntax_Syntax.U_name (utop))::[])))
in FStar_Syntax_Syntax.Tm_uinst (_157_484))
in (FStar_Syntax_Syntax.mk _157_485 None r1))
in (

let lex_top_t = (FStar_Syntax_Subst.close_univ_vars ((utop)::[]) lex_top_t)
in (

let dc_lextop = FStar_Syntax_Syntax.Sig_datacon (((lex_top), ((utop)::[]), (lex_top_t), (FStar_Syntax_Const.lex_t_lid), ((Prims.parse_int "0")), ([]), ([]), (r1)))
in (

let ucons1 = (FStar_Syntax_Syntax.new_univ_name (Some (r2)))
in (

let ucons2 = (FStar_Syntax_Syntax.new_univ_name (Some (r2)))
in (

let lex_cons_t = (

let a = (let _157_486 = (FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_type (FStar_Syntax_Syntax.U_name (ucons1))) None r2)
in (FStar_Syntax_Syntax.new_bv (Some (r2)) _157_486))
in (

let hd = (let _157_487 = (FStar_Syntax_Syntax.bv_to_name a)
in (FStar_Syntax_Syntax.new_bv (Some (r2)) _157_487))
in (

let tl = (let _157_491 = (let _157_490 = (let _157_489 = (let _157_488 = (FStar_Syntax_Syntax.fvar (FStar_Ident.set_lid_range FStar_Syntax_Const.lex_t_lid r2) FStar_Syntax_Syntax.Delta_constant None)
in ((_157_488), ((FStar_Syntax_Syntax.U_name (ucons2))::[])))
in FStar_Syntax_Syntax.Tm_uinst (_157_489))
in (FStar_Syntax_Syntax.mk _157_490 None r2))
in (FStar_Syntax_Syntax.new_bv (Some (r2)) _157_491))
in (

let res = (let _157_494 = (let _157_493 = (let _157_492 = (FStar_Syntax_Syntax.fvar (FStar_Ident.set_lid_range FStar_Syntax_Const.lex_t_lid r2) FStar_Syntax_Syntax.Delta_constant None)
in ((_157_492), ((FStar_Syntax_Syntax.U_max ((FStar_Syntax_Syntax.U_name (ucons1))::(FStar_Syntax_Syntax.U_name (ucons2))::[]))::[])))
in FStar_Syntax_Syntax.Tm_uinst (_157_493))
in (FStar_Syntax_Syntax.mk _157_494 None r2))
in (let _157_495 = (FStar_Syntax_Syntax.mk_Total res)
in (FStar_Syntax_Util.arrow ((((a), (Some (FStar_Syntax_Syntax.imp_tag))))::(((hd), (None)))::(((tl), (None)))::[]) _157_495))))))
in (

let lex_cons_t = (FStar_Syntax_Subst.close_univ_vars ((ucons1)::(ucons2)::[]) lex_cons_t)
in (

let dc_lexcons = FStar_Syntax_Syntax.Sig_datacon (((lex_cons), ((ucons1)::(ucons2)::[]), (lex_cons_t), (FStar_Syntax_Const.lex_t_lid), ((Prims.parse_int "0")), ([]), ([]), (r2)))
in (let _157_497 = (let _157_496 = (FStar_TypeChecker_Env.get_range env)
in (((tc)::(dc_lextop)::(dc_lexcons)::[]), ([]), (lids), (_157_496)))
in FStar_Syntax_Syntax.Sig_bundle (_157_497)))))))))))))))
end
| _60_734 -> begin
(let _157_499 = (let _157_498 = (FStar_Syntax_Print.sigelt_to_string (FStar_Syntax_Syntax.Sig_bundle (((ses), ([]), (lids), (FStar_Range.dummyRange)))))
in (FStar_Util.format1 "Unexpected lex_t: %s\n" _157_498))
in (FStar_All.failwith _157_499))
end))))
and tc_assume : FStar_TypeChecker_Env.env  ->  FStar_Ident.lident  ->  FStar_Syntax_Syntax.formula  ->  FStar_Syntax_Syntax.qualifier Prims.list  ->  FStar_Range.range  ->  FStar_Syntax_Syntax.sigelt = (fun env lid phi quals r -> (

let env = (FStar_TypeChecker_Env.set_range env r)
in (

let _60_744 = (FStar_Syntax_Util.type_u ())
in (match (_60_744) with
| (k, _60_743) -> begin
(

let phi = (let _157_505 = (tc_check_trivial_guard env phi k)
in (FStar_All.pipe_right _157_505 (FStar_TypeChecker_Normalize.normalize ((FStar_TypeChecker_Normalize.Beta)::(FStar_TypeChecker_Normalize.Eager_unfolding)::[]) env)))
in (

let _60_746 = (FStar_TypeChecker_Util.check_uvars r phi)
in FStar_Syntax_Syntax.Sig_assume (((lid), (phi), (quals), (r)))))
end))))
and tc_inductive : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.sigelt Prims.list  ->  FStar_Syntax_Syntax.qualifier Prims.list  ->  FStar_Ident.lident Prims.list  ->  (FStar_Syntax_Syntax.sigelt Prims.list * FStar_Syntax_Syntax.sigelt Prims.list) = (fun env ses quals lids -> (

let warn_positivity = (fun l r -> (let _157_515 = (let _157_514 = (FStar_Syntax_Print.lid_to_string l)
in (FStar_Util.format1 "Positivity check is not yet implemented (%s)" _157_514))
in (FStar_TypeChecker_Errors.diag r _157_515)))
in (

let env0 = env
in (

let tc_tycon = (fun env s -> (match (s) with
| FStar_Syntax_Syntax.Sig_inductive_typ (tc, uvs, tps, k, mutuals, data, quals, r) -> begin
(

let _60_769 = ()
in (

let _60_771 = (warn_positivity tc r)
in (

let _60_775 = (FStar_Syntax_Subst.open_term tps k)
in (match (_60_775) with
| (tps, k) -> begin
(

let _60_780 = (FStar_TypeChecker_TcTerm.tc_binders env tps)
in (match (_60_780) with
| (tps, env_tps, guard_params, us) -> begin
(

let _60_783 = (FStar_Syntax_Util.arrow_formals k)
in (match (_60_783) with
| (indices, t) -> begin
(

let _60_788 = (FStar_TypeChecker_TcTerm.tc_binders env_tps indices)
in (match (_60_788) with
| (indices, env', guard_indices, us') -> begin
(

let _60_796 = (

let _60_793 = (FStar_TypeChecker_TcTerm.tc_tot_or_gtot_term env' t)
in (match (_60_793) with
| (t, _60_791, g) -> begin
(let _157_522 = (let _157_521 = (let _157_520 = (FStar_TypeChecker_Rel.conj_guard guard_indices g)
in (FStar_TypeChecker_Rel.conj_guard guard_params _157_520))
in (FStar_TypeChecker_Rel.discharge_guard env' _157_521))
in ((t), (_157_522)))
end))
in (match (_60_796) with
| (t, guard) -> begin
(

let k = (let _157_523 = (FStar_Syntax_Syntax.mk_Total t)
in (FStar_Syntax_Util.arrow indices _157_523))
in (

let _60_800 = (FStar_Syntax_Util.type_u ())
in (match (_60_800) with
| (t_type, u) -> begin
(

let _60_801 = (let _157_524 = (FStar_TypeChecker_Rel.teq env' t t_type)
in (FStar_TypeChecker_Rel.force_trivial_guard env' _157_524))
in (

let t_tc = (let _157_525 = (FStar_Syntax_Syntax.mk_Total t)
in (FStar_Syntax_Util.arrow (FStar_List.append tps indices) _157_525))
in (

let tps = (FStar_Syntax_Subst.close_binders tps)
in (

let k = (FStar_Syntax_Subst.close tps k)
in (

let fv_tc = (FStar_Syntax_Syntax.lid_as_fv tc FStar_Syntax_Syntax.Delta_constant None)
in (let _157_526 = (FStar_TypeChecker_Env.push_let_binding env_tps (FStar_Util.Inr (fv_tc)) (([]), (t_tc)))
in ((_157_526), (FStar_Syntax_Syntax.Sig_inductive_typ (((tc), ([]), (tps), (k), (mutuals), (data), (quals), (r)))), (u), (guard))))))))
end)))
end))
end))
end))
end))
end))))
end
| _60_808 -> begin
(FStar_All.failwith "impossible")
end))
in (

let positive_if_pure = (fun _60_810 l -> ())
in (

let tc_data = (fun env tcs _60_1 -> (match (_60_1) with
| FStar_Syntax_Syntax.Sig_datacon (c, _uvs, t, tc_lid, ntps, quals, _mutual_tcs, r) -> begin
(

let _60_827 = ()
in (

let _60_862 = (

let tps_u_opt = (FStar_Util.find_map tcs (fun _60_831 -> (match (_60_831) with
| (se, u_tc) -> begin
if (let _157_539 = (let _157_538 = (FStar_Syntax_Util.lid_of_sigelt se)
in (FStar_Util.must _157_538))
in (FStar_Ident.lid_equals tc_lid _157_539)) then begin
(

let tps = (match (se) with
| FStar_Syntax_Syntax.Sig_inductive_typ (_60_833, _60_835, tps, _60_838, _60_840, _60_842, _60_844, _60_846) -> begin
(FStar_All.pipe_right tps (FStar_List.map (fun _60_852 -> (match (_60_852) with
| (x, _60_851) -> begin
((x), (Some (FStar_Syntax_Syntax.imp_tag)))
end))))
end
| _60_854 -> begin
(FStar_All.failwith "Impossible")
end)
in Some (((tps), (u_tc))))
end else begin
None
end
end)))
in (match (tps_u_opt) with
| Some (x) -> begin
x
end
| None -> begin
if (FStar_Ident.lid_equals tc_lid FStar_Syntax_Const.exn_lid) then begin
(([]), (FStar_Syntax_Syntax.U_zero))
end else begin
(Prims.raise (FStar_Syntax_Syntax.Error ((("Unexpected data constructor"), (r)))))
end
end))
in (match (_60_862) with
| (tps, u_tc) -> begin
(

let _60_882 = (match ((let _157_541 = (FStar_Syntax_Subst.compress t)
in _157_541.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (bs, res) -> begin
(

let _60_870 = (FStar_Util.first_N ntps bs)
in (match (_60_870) with
| (_60_868, bs') -> begin
(

let t = (FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_arrow (((bs'), (res)))) None t.FStar_Syntax_Syntax.pos)
in (

let subst = (FStar_All.pipe_right tps (FStar_List.mapi (fun i _60_876 -> (match (_60_876) with
| (x, _60_875) -> begin
FStar_Syntax_Syntax.DB ((((ntps - ((Prims.parse_int "1") + i))), (x)))
end))))
in (let _157_544 = (FStar_Syntax_Subst.subst subst t)
in (FStar_Syntax_Util.arrow_formals _157_544))))
end))
end
| _60_879 -> begin
(([]), (t))
end)
in (match (_60_882) with
| (arguments, result) -> begin
(

let _60_883 = if (FStar_TypeChecker_Env.debug env FStar_Options.Low) then begin
(let _157_547 = (FStar_Syntax_Print.lid_to_string c)
in (let _157_546 = (FStar_Syntax_Print.binders_to_string "->" arguments)
in (let _157_545 = (FStar_Syntax_Print.term_to_string result)
in (FStar_Util.print3 "Checking datacon  %s : %s -> %s \n" _157_547 _157_546 _157_545))))
end else begin
()
end
in (

let _60_888 = (tc_tparams env arguments)
in (match (_60_888) with
| (arguments, env', us) -> begin
(

let _60_891 = (FStar_TypeChecker_TcTerm.tc_trivial_guard env' result)
in (match (_60_891) with
| (result, res_lcomp) -> begin
(

let _60_896 = (match ((let _157_548 = (FStar_Syntax_Subst.compress res_lcomp.FStar_Syntax_Syntax.res_typ)
in _157_548.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_type (_60_893) -> begin
()
end
| ty -> begin
(let _157_553 = (let _157_552 = (let _157_551 = (let _157_550 = (FStar_Syntax_Print.term_to_string result)
in (let _157_549 = (FStar_Syntax_Print.term_to_string res_lcomp.FStar_Syntax_Syntax.res_typ)
in (FStar_Util.format2 "The type of %s is %s, but since this is the result type of a constructor its type should be Type" _157_550 _157_549)))
in ((_157_551), (r)))
in FStar_Syntax_Syntax.Error (_157_552))
in (Prims.raise _157_553))
end)
in (

let _60_901 = (FStar_Syntax_Util.head_and_args result)
in (match (_60_901) with
| (head, _60_900) -> begin
(

let _60_906 = (match ((let _157_554 = (FStar_Syntax_Subst.compress head)
in _157_554.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_fvar (fv) when (FStar_Syntax_Syntax.fv_eq_lid fv tc_lid) -> begin
()
end
| _60_905 -> begin
(let _157_559 = (let _157_558 = (let _157_557 = (let _157_556 = (FStar_Syntax_Print.lid_to_string tc_lid)
in (let _157_555 = (FStar_Syntax_Print.term_to_string head)
in (FStar_Util.format2 "Expected a constructor of type %s; got %s" _157_556 _157_555)))
in ((_157_557), (r)))
in FStar_Syntax_Syntax.Error (_157_558))
in (Prims.raise _157_559))
end)
in (

let g = (FStar_List.fold_left2 (fun g _60_912 u_x -> (match (_60_912) with
| (x, _60_911) -> begin
(

let _60_914 = ()
in (let _157_563 = (FStar_TypeChecker_Rel.universe_inequality u_x u_tc)
in (FStar_TypeChecker_Rel.conj_guard g _157_563)))
end)) FStar_TypeChecker_Rel.trivial_guard arguments us)
in (

let t = (let _157_567 = (let _157_565 = (FStar_All.pipe_right tps (FStar_List.map (fun _60_920 -> (match (_60_920) with
| (x, _60_919) -> begin
((x), (Some (FStar_Syntax_Syntax.Implicit (true))))
end))))
in (FStar_List.append _157_565 arguments))
in (let _157_566 = (FStar_Syntax_Syntax.mk_Total result)
in (FStar_Syntax_Util.arrow _157_567 _157_566)))
in ((FStar_Syntax_Syntax.Sig_datacon (((c), ([]), (t), (tc_lid), (ntps), (quals), ([]), (r)))), (g)))))
end)))
end))
end)))
end))
end)))
end
| _60_923 -> begin
(FStar_All.failwith "impossible")
end))
in (

let generalize_and_inst_within = (fun env g tcs datas -> (

let _60_929 = (FStar_TypeChecker_Rel.force_trivial_guard env g)
in (

let binders = (FStar_All.pipe_right tcs (FStar_List.map (fun _60_2 -> (match (_60_2) with
| FStar_Syntax_Syntax.Sig_inductive_typ (_60_933, _60_935, tps, k, _60_939, _60_941, _60_943, _60_945) -> begin
(let _157_578 = (let _157_577 = (FStar_Syntax_Syntax.mk_Total k)
in (FStar_All.pipe_left (FStar_Syntax_Util.arrow tps) _157_577))
in (FStar_Syntax_Syntax.null_binder _157_578))
end
| _60_949 -> begin
(FStar_All.failwith "Impossible")
end))))
in (

let binders' = (FStar_All.pipe_right datas (FStar_List.map (fun _60_3 -> (match (_60_3) with
| FStar_Syntax_Syntax.Sig_datacon (_60_953, _60_955, t, _60_958, _60_960, _60_962, _60_964, _60_966) -> begin
(FStar_Syntax_Syntax.null_binder t)
end
| _60_970 -> begin
(FStar_All.failwith "Impossible")
end))))
in (

let t = (let _157_580 = (FStar_Syntax_Syntax.mk_Total FStar_TypeChecker_Common.t_unit)
in (FStar_Syntax_Util.arrow (FStar_List.append binders binders') _157_580))
in (

let _60_973 = if (FStar_TypeChecker_Env.debug env FStar_Options.Low) then begin
(let _157_581 = (FStar_TypeChecker_Normalize.term_to_string env t)
in (FStar_Util.print1 "@@@@@@Trying to generalize universes in %s\n" _157_581))
end else begin
()
end
in (

let _60_977 = (FStar_TypeChecker_Util.generalize_universes env t)
in (match (_60_977) with
| (uvs, t) -> begin
(

let _60_979 = if (FStar_TypeChecker_Env.debug env FStar_Options.Low) then begin
(let _157_585 = (let _157_583 = (FStar_All.pipe_right uvs (FStar_List.map (fun u -> u.FStar_Ident.idText)))
in (FStar_All.pipe_right _157_583 (FStar_String.concat ", ")))
in (let _157_584 = (FStar_Syntax_Print.term_to_string t)
in (FStar_Util.print2 "@@@@@@Generalized to (%s, %s)\n" _157_585 _157_584)))
end else begin
()
end
in (

let _60_983 = (FStar_Syntax_Subst.open_univ_vars uvs t)
in (match (_60_983) with
| (uvs, t) -> begin
(

let _60_987 = (FStar_Syntax_Util.arrow_formals t)
in (match (_60_987) with
| (args, _60_986) -> begin
(

let _60_990 = (FStar_Util.first_N (FStar_List.length binders) args)
in (match (_60_990) with
| (tc_types, data_types) -> begin
(

let tcs = (FStar_List.map2 (fun _60_994 se -> (match (_60_994) with
| (x, _60_993) -> begin
(match (se) with
| FStar_Syntax_Syntax.Sig_inductive_typ (tc, _60_998, tps, _60_1001, mutuals, datas, quals, r) -> begin
(

let ty = (FStar_Syntax_Subst.close_univ_vars uvs x.FStar_Syntax_Syntax.sort)
in (

let _60_1024 = (match ((let _157_588 = (FStar_Syntax_Subst.compress ty)
in _157_588.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (binders, c) -> begin
(

let _60_1015 = (FStar_Util.first_N (FStar_List.length tps) binders)
in (match (_60_1015) with
| (tps, rest) -> begin
(

let t = (match (rest) with
| [] -> begin
(FStar_Syntax_Util.comp_result c)
end
| _60_1018 -> begin
(let _157_589 = (FStar_ST.read x.FStar_Syntax_Syntax.sort.FStar_Syntax_Syntax.tk)
in (FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_arrow (((rest), (c)))) _157_589 x.FStar_Syntax_Syntax.sort.FStar_Syntax_Syntax.pos))
end)
in ((tps), (t)))
end))
end
| _60_1021 -> begin
(([]), (ty))
end)
in (match (_60_1024) with
| (tps, t) -> begin
FStar_Syntax_Syntax.Sig_inductive_typ (((tc), (uvs), (tps), (t), (mutuals), (datas), (quals), (r)))
end)))
end
| _60_1026 -> begin
(FStar_All.failwith "Impossible")
end)
end)) tc_types tcs)
in (

let datas = (match (uvs) with
| [] -> begin
datas
end
| _60_1030 -> begin
(

let uvs_universes = (FStar_All.pipe_right uvs (FStar_List.map (fun _157_590 -> FStar_Syntax_Syntax.U_name (_157_590))))
in (

let tc_insts = (FStar_All.pipe_right tcs (FStar_List.map (fun _60_4 -> (match (_60_4) with
| FStar_Syntax_Syntax.Sig_inductive_typ (tc, _60_1035, _60_1037, _60_1039, _60_1041, _60_1043, _60_1045, _60_1047) -> begin
((tc), (uvs_universes))
end
| _60_1051 -> begin
(FStar_All.failwith "Impossible")
end))))
in (FStar_List.map2 (fun _60_1056 d -> (match (_60_1056) with
| (t, _60_1055) -> begin
(match (d) with
| FStar_Syntax_Syntax.Sig_datacon (l, _60_1060, _60_1062, tc, ntps, quals, mutuals, r) -> begin
(

let ty = (let _157_594 = (FStar_Syntax_InstFV.instantiate tc_insts t.FStar_Syntax_Syntax.sort)
in (FStar_All.pipe_right _157_594 (FStar_Syntax_Subst.close_univ_vars uvs)))
in FStar_Syntax_Syntax.Sig_datacon (((l), (uvs), (ty), (tc), (ntps), (quals), (mutuals), (r))))
end
| _60_1072 -> begin
(FStar_All.failwith "Impossible")
end)
end)) data_types datas)))
end)
in ((tcs), (datas))))
end))
end))
end)))
end))))))))
in (

let _60_1082 = (FStar_All.pipe_right ses (FStar_List.partition (fun _60_5 -> (match (_60_5) with
| FStar_Syntax_Syntax.Sig_inductive_typ (_60_1076) -> begin
true
end
| _60_1079 -> begin
false
end))))
in (match (_60_1082) with
| (tys, datas) -> begin
(

let _60_1089 = if (FStar_All.pipe_right datas (FStar_Util.for_some (fun _60_6 -> (match (_60_6) with
| FStar_Syntax_Syntax.Sig_datacon (_60_1085) -> begin
false
end
| _60_1088 -> begin
true
end)))) then begin
(let _157_599 = (let _157_598 = (let _157_597 = (FStar_TypeChecker_Env.get_range env)
in (("Mutually defined type contains a non-inductive element"), (_157_597)))
in FStar_Syntax_Syntax.Error (_157_598))
in (Prims.raise _157_599))
end else begin
()
end
in (

let env0 = env
in (

let _60_1108 = (FStar_List.fold_right (fun tc _60_1096 -> (match (_60_1096) with
| (env, all_tcs, g) -> begin
(

let _60_1101 = (tc_tycon env tc)
in (match (_60_1101) with
| (env, tc, tc_u, guard) -> begin
(

let g' = (FStar_TypeChecker_Rel.universe_inequality FStar_Syntax_Syntax.U_zero tc_u)
in (

let _60_1103 = if (FStar_TypeChecker_Env.debug env FStar_Options.Low) then begin
(let _157_602 = (FStar_Syntax_Print.sigelt_to_string tc)
in (FStar_Util.print1 "Checked inductive: %s\n" _157_602))
end else begin
()
end
in (let _157_604 = (let _157_603 = (FStar_TypeChecker_Rel.conj_guard guard g')
in (FStar_TypeChecker_Rel.conj_guard g _157_603))
in ((env), ((((tc), (tc_u)))::all_tcs), (_157_604)))))
end))
end)) tys ((env), ([]), (FStar_TypeChecker_Rel.trivial_guard)))
in (match (_60_1108) with
| (env, tcs, g) -> begin
(

let _60_1118 = (FStar_List.fold_right (fun se _60_1112 -> (match (_60_1112) with
| (datas, g) -> begin
(

let _60_1115 = (tc_data env tcs se)
in (match (_60_1115) with
| (data, g') -> begin
(let _157_607 = (FStar_TypeChecker_Rel.conj_guard g g')
in (((data)::datas), (_157_607)))
end))
end)) datas (([]), (g)))
in (match (_60_1118) with
| (datas, g) -> begin
(

let _60_1121 = (let _157_608 = (FStar_List.map Prims.fst tcs)
in (generalize_and_inst_within env0 g _157_608 datas))
in (match (_60_1121) with
| (tcs, datas) -> begin
(

let sig_bndle = (let _157_610 = (let _157_609 = (FStar_TypeChecker_Env.get_range env0)
in (((FStar_List.append tcs datas)), (quals), (lids), (_157_609)))
in FStar_Syntax_Syntax.Sig_bundle (_157_610))
in (

let data_ops_ses = (let _157_611 = (FStar_List.map (FStar_TypeChecker_Util.mk_data_operations quals env tcs) datas)
in (FStar_All.pipe_right _157_611 FStar_List.flatten))
in (

let datacon_typ = (fun data -> (match (data) with
| FStar_Syntax_Syntax.Sig_datacon (_60_1127, _60_1129, t, _60_1132, _60_1134, _60_1136, _60_1138, _60_1140) -> begin
t
end
| _60_1144 -> begin
(FStar_All.failwith "Impossible!")
end))
in (

let dr = FStar_Range.dummyRange
in (

let optimized_haseq_scheme = (fun _60_1147 -> (

let haseq_ty = (fun usubst us acc ty -> (

let _60_1174 = (match (ty) with
| FStar_Syntax_Syntax.Sig_inductive_typ (lid, _60_1156, bs, t, _60_1160, d_lids, _60_1163, _60_1165) -> begin
((lid), (bs), (t), (d_lids))
end
| _60_1169 -> begin
(FStar_All.failwith "Impossible!")
end)
in (match (_60_1174) with
| (lid, bs, t, d_lids) -> begin
(

let bs = (FStar_Syntax_Subst.subst_binders usubst bs)
in (

let t = (let _157_624 = (FStar_Syntax_Subst.shift_subst (FStar_List.length bs) usubst)
in (FStar_Syntax_Subst.subst _157_624 t))
in (

let _60_1179 = (FStar_Syntax_Subst.open_term bs t)
in (match (_60_1179) with
| (bs, t) -> begin
(

let ibs = (match ((let _157_625 = (FStar_Syntax_Subst.compress t)
in _157_625.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (ibs, _60_1182) -> begin
ibs
end
| _60_1186 -> begin
[]
end)
in (

let ibs = (FStar_Syntax_Subst.open_binders ibs)
in (

let ind = (let _157_628 = (FStar_Syntax_Syntax.fvar lid FStar_Syntax_Syntax.Delta_constant None)
in (let _157_627 = (FStar_List.map (fun u -> FStar_Syntax_Syntax.U_name (u)) us)
in (FStar_Syntax_Syntax.mk_Tm_uinst _157_628 _157_627)))
in (

let ind = (let _157_631 = (FStar_List.map (fun _60_1193 -> (match (_60_1193) with
| (bv, aq) -> begin
(let _157_630 = (FStar_Syntax_Syntax.bv_to_name bv)
in ((_157_630), (aq)))
end)) bs)
in (FStar_Syntax_Syntax.mk_Tm_app ind _157_631 None dr))
in (

let ind = (let _157_634 = (FStar_List.map (fun _60_1197 -> (match (_60_1197) with
| (bv, aq) -> begin
(let _157_633 = (FStar_Syntax_Syntax.bv_to_name bv)
in ((_157_633), (aq)))
end)) ibs)
in (FStar_Syntax_Syntax.mk_Tm_app ind _157_634 None dr))
in (

let haseq_ind = (let _157_636 = (let _157_635 = (FStar_Syntax_Syntax.as_arg ind)
in (_157_635)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.t_haseq _157_636 None dr))
in (

let bs' = (FStar_List.filter (fun b -> (

let _60_1208 = acc
in (match (_60_1208) with
| (_60_1202, en, _60_1205, _60_1207) -> begin
(

let opt = (let _157_639 = (let _157_638 = (FStar_Syntax_Util.type_u ())
in (Prims.fst _157_638))
in (FStar_TypeChecker_Rel.try_subtype' en (Prims.fst b).FStar_Syntax_Syntax.sort _157_639 false))
in (match (opt) with
| None -> begin
false
end
| Some (_60_1212) -> begin
true
end))
end))) bs)
in (

let haseq_bs = (FStar_List.fold_left (fun t b -> (let _157_645 = (let _157_644 = (let _157_643 = (let _157_642 = (FStar_Syntax_Syntax.bv_to_name (Prims.fst b))
in (FStar_Syntax_Syntax.as_arg _157_642))
in (_157_643)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.t_haseq _157_644 None dr))
in (FStar_Syntax_Util.mk_conj t _157_645))) FStar_Syntax_Util.t_true bs')
in (

let fml = (FStar_Syntax_Util.mk_imp haseq_bs haseq_ind)
in (

let fml = (

let _60_1219 = fml
in (let _157_651 = (let _157_650 = (let _157_649 = (let _157_648 = (let _157_647 = (let _157_646 = (FStar_Syntax_Syntax.as_arg haseq_ind)
in (_157_646)::[])
in (_157_647)::[])
in FStar_Syntax_Syntax.Meta_pattern (_157_648))
in ((fml), (_157_649)))
in FStar_Syntax_Syntax.Tm_meta (_157_650))
in {FStar_Syntax_Syntax.n = _157_651; FStar_Syntax_Syntax.tk = _60_1219.FStar_Syntax_Syntax.tk; FStar_Syntax_Syntax.pos = _60_1219.FStar_Syntax_Syntax.pos; FStar_Syntax_Syntax.vars = _60_1219.FStar_Syntax_Syntax.vars}))
in (

let fml = (FStar_List.fold_right (fun b t -> (let _157_657 = (let _157_656 = (let _157_655 = (let _157_654 = (FStar_Syntax_Subst.close ((b)::[]) t)
in (FStar_Syntax_Util.abs (((((Prims.fst b)), (None)))::[]) _157_654 None))
in (FStar_Syntax_Syntax.as_arg _157_655))
in (_157_656)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.tforall _157_657 None dr))) ibs fml)
in (

let fml = (FStar_List.fold_right (fun b t -> (let _157_663 = (let _157_662 = (let _157_661 = (let _157_660 = (FStar_Syntax_Subst.close ((b)::[]) t)
in (FStar_Syntax_Util.abs (((((Prims.fst b)), (None)))::[]) _157_660 None))
in (FStar_Syntax_Syntax.as_arg _157_661))
in (_157_662)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.tforall _157_663 None dr))) bs fml)
in (

let guard = (FStar_Syntax_Util.mk_conj haseq_bs fml)
in (

let _60_1233 = acc
in (match (_60_1233) with
| (l_axioms, env, guard', cond') -> begin
(

let env = (FStar_TypeChecker_Env.push_binders env bs)
in (

let env = (FStar_TypeChecker_Env.push_binders env ibs)
in (

let t_datas = (FStar_List.filter (fun s -> (match (s) with
| FStar_Syntax_Syntax.Sig_datacon (_60_1238, _60_1240, _60_1242, t_lid, _60_1245, _60_1247, _60_1249, _60_1251) -> begin
(t_lid = lid)
end
| _60_1255 -> begin
(FStar_All.failwith "Impossible")
end)) datas)
in (

let haseq_data = (fun data -> (

let dt = (datacon_typ data)
in (

let dt = (FStar_Syntax_Subst.subst usubst dt)
in (match ((let _157_667 = (FStar_Syntax_Subst.compress dt)
in _157_667.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (dbs, _60_1263) -> begin
(

let dbs = (let _157_668 = (FStar_List.splitAt (FStar_List.length bs) dbs)
in (Prims.snd _157_668))
in (

let dbs = (let _157_669 = (FStar_Syntax_Subst.opening_of_binders bs)
in (FStar_Syntax_Subst.subst_binders _157_669 dbs))
in (

let dbs = (FStar_Syntax_Subst.open_binders dbs)
in (

let cond = (FStar_List.fold_left (fun t b -> (

let haseq_b = (let _157_673 = (let _157_672 = (FStar_Syntax_Syntax.as_arg (Prims.fst b).FStar_Syntax_Syntax.sort)
in (_157_672)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.t_haseq _157_673 None dr))
in (

let sort_range = (Prims.fst b).FStar_Syntax_Syntax.sort.FStar_Syntax_Syntax.pos
in (

let haseq_b = (let _157_675 = (let _157_674 = (FStar_Syntax_Print.term_to_string ind)
in (FStar_Util.format1 "Failed to prove that the type \'%s\' supports decidable equality because of this argument; add the \'noeq\' qualifier" _157_674))
in (FStar_TypeChecker_Util.label _157_675 sort_range haseq_b))
in (FStar_Syntax_Util.mk_conj t haseq_b))))) FStar_Syntax_Util.t_true dbs)
in (FStar_List.fold_right (fun b t -> (let _157_681 = (let _157_680 = (let _157_679 = (let _157_678 = (FStar_Syntax_Subst.close ((b)::[]) t)
in (FStar_Syntax_Util.abs (((((Prims.fst b)), (None)))::[]) _157_678 None))
in (FStar_Syntax_Syntax.as_arg _157_679))
in (_157_680)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.tforall _157_681 None dr))) dbs cond)))))
end
| _60_1278 -> begin
FStar_Syntax_Util.t_true
end))))
in (

let cond = (FStar_List.fold_left (fun acc d -> (let _157_684 = (haseq_data d)
in (FStar_Syntax_Util.mk_conj acc _157_684))) FStar_Syntax_Util.t_true t_datas)
in (

let axiom_lid = (FStar_Ident.lid_of_ids (FStar_List.append lid.FStar_Ident.ns (((FStar_Ident.id_of_text (Prims.strcat lid.FStar_Ident.ident.FStar_Ident.idText "_haseq")))::[])))
in (let _157_686 = (FStar_Syntax_Util.mk_conj guard' guard)
in (let _157_685 = (FStar_Syntax_Util.mk_conj cond' cond)
in (((FStar_List.append l_axioms ((((axiom_lid), (fml)))::[]))), (env), (_157_686), (_157_685))))))))))
end)))))))))))))))
end))))
end)))
in (

let us = (

let ty = (FStar_List.hd tcs)
in (match (ty) with
| FStar_Syntax_Syntax.Sig_inductive_typ (_60_1285, us, _60_1288, _60_1290, _60_1292, _60_1294, _60_1296, _60_1298) -> begin
us
end
| _60_1302 -> begin
(FStar_All.failwith "Impossible!")
end))
in (

let _60_1306 = (FStar_Syntax_Subst.univ_var_opening us)
in (match (_60_1306) with
| (usubst, us) -> begin
(

let env = (FStar_TypeChecker_Env.push_sigelt env0 sig_bndle)
in (

let _60_1308 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.push "haseq")
in (

let _60_1310 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.encode_sig env sig_bndle)
in (

let env = (FStar_TypeChecker_Env.push_univ_vars env us)
in (

let _60_1317 = (FStar_List.fold_left (haseq_ty usubst us) (([]), (env), (FStar_Syntax_Util.t_true), (FStar_Syntax_Util.t_true)) tcs)
in (match (_60_1317) with
| (axioms, env, guard, cond) -> begin
(

let phi = (FStar_Syntax_Util.mk_imp guard cond)
in (

let _60_1322 = (FStar_TypeChecker_TcTerm.tc_trivial_guard env phi)
in (match (_60_1322) with
| (phi, _60_1321) -> begin
(

let _60_1323 = if (FStar_TypeChecker_Env.should_verify env) then begin
(let _157_687 = (FStar_TypeChecker_Rel.guard_of_guard_formula (FStar_TypeChecker_Common.NonTrivial (phi)))
in (FStar_TypeChecker_Rel.force_trivial_guard env _157_687))
end else begin
()
end
in (

let ses = (FStar_List.fold_left (fun l _60_1328 -> (match (_60_1328) with
| (lid, fml) -> begin
(

let se = (tc_assume env lid fml [] dr)
in (FStar_List.append l ((se)::[])))
end)) [] axioms)
in (

let _60_1331 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.pop "haseq")
in ses)))
end)))
end))))))
end)))))
in (

let unoptimized_haseq_scheme = (fun _60_1334 -> (

let mutuals = (FStar_List.map (fun ty -> (match (ty) with
| FStar_Syntax_Syntax.Sig_inductive_typ (lid, _60_1339, _60_1341, _60_1343, _60_1345, _60_1347, _60_1349, _60_1351) -> begin
lid
end
| _60_1355 -> begin
(FStar_All.failwith "Impossible!")
end)) tcs)
in (

let haseq_ty = (fun usubst us acc ty -> (

let _60_1382 = (match (ty) with
| FStar_Syntax_Syntax.Sig_inductive_typ (lid, _60_1364, bs, t, _60_1368, d_lids, _60_1371, _60_1373) -> begin
((lid), (bs), (t), (d_lids))
end
| _60_1377 -> begin
(FStar_All.failwith "Impossible!")
end)
in (match (_60_1382) with
| (lid, bs, t, d_lids) -> begin
(

let bs = (FStar_Syntax_Subst.subst_binders usubst bs)
in (

let t = (let _157_701 = (FStar_Syntax_Subst.shift_subst (FStar_List.length bs) usubst)
in (FStar_Syntax_Subst.subst _157_701 t))
in (

let _60_1387 = (FStar_Syntax_Subst.open_term bs t)
in (match (_60_1387) with
| (bs, t) -> begin
(

let ibs = (match ((let _157_702 = (FStar_Syntax_Subst.compress t)
in _157_702.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (ibs, _60_1390) -> begin
ibs
end
| _60_1394 -> begin
[]
end)
in (

let ibs = (FStar_Syntax_Subst.open_binders ibs)
in (

let ind = (let _157_705 = (FStar_Syntax_Syntax.fvar lid FStar_Syntax_Syntax.Delta_constant None)
in (let _157_704 = (FStar_List.map (fun u -> FStar_Syntax_Syntax.U_name (u)) us)
in (FStar_Syntax_Syntax.mk_Tm_uinst _157_705 _157_704)))
in (

let ind = (let _157_708 = (FStar_List.map (fun _60_1401 -> (match (_60_1401) with
| (bv, aq) -> begin
(let _157_707 = (FStar_Syntax_Syntax.bv_to_name bv)
in ((_157_707), (aq)))
end)) bs)
in (FStar_Syntax_Syntax.mk_Tm_app ind _157_708 None dr))
in (

let ind = (let _157_711 = (FStar_List.map (fun _60_1405 -> (match (_60_1405) with
| (bv, aq) -> begin
(let _157_710 = (FStar_Syntax_Syntax.bv_to_name bv)
in ((_157_710), (aq)))
end)) ibs)
in (FStar_Syntax_Syntax.mk_Tm_app ind _157_711 None dr))
in (

let haseq_ind = (let _157_713 = (let _157_712 = (FStar_Syntax_Syntax.as_arg ind)
in (_157_712)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.t_haseq _157_713 None dr))
in (

let rec is_mutual = (fun t -> (match ((let _157_717 = (FStar_Syntax_Subst.compress t)
in _157_717.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_fvar (fv) -> begin
(FStar_List.existsb (fun lid -> (FStar_Ident.lid_equals lid fv.FStar_Syntax_Syntax.fv_name.FStar_Syntax_Syntax.v)) mutuals)
end
| FStar_Syntax_Syntax.Tm_uinst (t', _60_1416) -> begin
(is_mutual t')
end
| FStar_Syntax_Syntax.Tm_refine (bv, t') -> begin
(is_mutual bv.FStar_Syntax_Syntax.sort)
end
| FStar_Syntax_Syntax.Tm_app (t', args) -> begin
if (is_mutual t') then begin
true
end else begin
(let _157_719 = (FStar_List.map Prims.fst args)
in (exists_mutual _157_719))
end
end
| FStar_Syntax_Syntax.Tm_meta (t', _60_1429) -> begin
(is_mutual t')
end
| _60_1433 -> begin
false
end))
and exists_mutual = (fun _60_7 -> (match (_60_7) with
| [] -> begin
false
end
| (hd)::tl -> begin
((is_mutual hd) || (exists_mutual tl))
end))
in (

let haseq_data = (fun acc data -> (

let dt = (datacon_typ data)
in (

let dt = (FStar_Syntax_Subst.subst usubst dt)
in (match ((let _157_725 = (FStar_Syntax_Subst.compress dt)
in _157_725.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (dbs, _60_1446) -> begin
(

let dbs = (let _157_726 = (FStar_List.splitAt (FStar_List.length bs) dbs)
in (Prims.snd _157_726))
in (

let dbs = (let _157_727 = (FStar_Syntax_Subst.opening_of_binders bs)
in (FStar_Syntax_Subst.subst_binders _157_727 dbs))
in (

let dbs = (FStar_Syntax_Subst.open_binders dbs)
in (

let cond = (FStar_List.fold_left (fun t b -> (

let sort = (Prims.fst b).FStar_Syntax_Syntax.sort
in (

let haseq_sort = (let _157_731 = (let _157_730 = (FStar_Syntax_Syntax.as_arg (Prims.fst b).FStar_Syntax_Syntax.sort)
in (_157_730)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.t_haseq _157_731 None dr))
in (

let haseq_sort = if (is_mutual sort) then begin
(FStar_Syntax_Util.mk_imp haseq_ind haseq_sort)
end else begin
haseq_sort
end
in (FStar_Syntax_Util.mk_conj t haseq_sort))))) FStar_Syntax_Util.t_true dbs)
in (

let cond = (FStar_List.fold_right (fun b t -> (let _157_737 = (let _157_736 = (let _157_735 = (let _157_734 = (FStar_Syntax_Subst.close ((b)::[]) t)
in (FStar_Syntax_Util.abs (((((Prims.fst b)), (None)))::[]) _157_734 None))
in (FStar_Syntax_Syntax.as_arg _157_735))
in (_157_736)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.tforall _157_737 None dr))) dbs cond)
in (FStar_Syntax_Util.mk_conj acc cond))))))
end
| _60_1462 -> begin
acc
end))))
in (

let t_datas = (FStar_List.filter (fun s -> (match (s) with
| FStar_Syntax_Syntax.Sig_datacon (_60_1465, _60_1467, _60_1469, t_lid, _60_1472, _60_1474, _60_1476, _60_1478) -> begin
(t_lid = lid)
end
| _60_1482 -> begin
(FStar_All.failwith "Impossible")
end)) datas)
in (

let data_cond = (FStar_List.fold_left haseq_data FStar_Syntax_Util.t_true t_datas)
in (

let fml = (FStar_Syntax_Util.mk_imp data_cond haseq_ind)
in (

let fml = (

let _60_1486 = fml
in (let _157_744 = (let _157_743 = (let _157_742 = (let _157_741 = (let _157_740 = (let _157_739 = (FStar_Syntax_Syntax.as_arg haseq_ind)
in (_157_739)::[])
in (_157_740)::[])
in FStar_Syntax_Syntax.Meta_pattern (_157_741))
in ((fml), (_157_742)))
in FStar_Syntax_Syntax.Tm_meta (_157_743))
in {FStar_Syntax_Syntax.n = _157_744; FStar_Syntax_Syntax.tk = _60_1486.FStar_Syntax_Syntax.tk; FStar_Syntax_Syntax.pos = _60_1486.FStar_Syntax_Syntax.pos; FStar_Syntax_Syntax.vars = _60_1486.FStar_Syntax_Syntax.vars}))
in (

let fml = (FStar_List.fold_right (fun b t -> (let _157_750 = (let _157_749 = (let _157_748 = (let _157_747 = (FStar_Syntax_Subst.close ((b)::[]) t)
in (FStar_Syntax_Util.abs (((((Prims.fst b)), (None)))::[]) _157_747 None))
in (FStar_Syntax_Syntax.as_arg _157_748))
in (_157_749)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.tforall _157_750 None dr))) ibs fml)
in (

let fml = (FStar_List.fold_right (fun b t -> (let _157_756 = (let _157_755 = (let _157_754 = (let _157_753 = (FStar_Syntax_Subst.close ((b)::[]) t)
in (FStar_Syntax_Util.abs (((((Prims.fst b)), (None)))::[]) _157_753 None))
in (FStar_Syntax_Syntax.as_arg _157_754))
in (_157_755)::[])
in (FStar_Syntax_Syntax.mk_Tm_app FStar_Syntax_Util.tforall _157_756 None dr))) bs fml)
in (FStar_Syntax_Util.mk_conj acc fml)))))))))))))))
end))))
end)))
in (

let _60_1516 = (

let ty = (FStar_List.hd tcs)
in (match (ty) with
| FStar_Syntax_Syntax.Sig_inductive_typ (lid, us, _60_1499, _60_1501, _60_1503, _60_1505, _60_1507, _60_1509) -> begin
((lid), (us))
end
| _60_1513 -> begin
(FStar_All.failwith "Impossible!")
end))
in (match (_60_1516) with
| (lid, us) -> begin
(

let _60_1519 = (FStar_Syntax_Subst.univ_var_opening us)
in (match (_60_1519) with
| (usubst, us) -> begin
(

let fml = (FStar_List.fold_left (haseq_ty usubst us) FStar_Syntax_Util.t_true tcs)
in (

let env = (FStar_TypeChecker_Env.push_sigelt env0 sig_bndle)
in (

let _60_1522 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.push "haseq")
in (

let _60_1524 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.encode_sig env sig_bndle)
in (

let env = (FStar_TypeChecker_Env.push_univ_vars env us)
in (

let se = (let _157_757 = (FStar_Ident.lid_of_ids (FStar_List.append lid.FStar_Ident.ns (((FStar_Ident.id_of_text (Prims.strcat lid.FStar_Ident.ident.FStar_Ident.idText "_haseq")))::[])))
in (tc_assume env _157_757 fml [] dr))
in (

let _60_1528 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.pop "haseq")
in (se)::[])))))))
end))
end)))))
in (

let skip_prims_type = (fun _60_1531 -> (

let lid = (

let ty = (FStar_List.hd tcs)
in (match (ty) with
| FStar_Syntax_Syntax.Sig_inductive_typ (lid, _60_1536, _60_1538, _60_1540, _60_1542, _60_1544, _60_1546, _60_1548) -> begin
lid
end
| _60_1552 -> begin
(FStar_All.failwith "Impossible")
end))
in (

let types_to_skip = ("c_False")::("c_True")::("equals")::("h_equals")::("c_and")::("c_or")::[]
in (FStar_List.existsb (fun s -> (s = lid.FStar_Ident.ident.FStar_Ident.idText)) types_to_skip))))
in (

let is_noeq = (FStar_List.existsb (fun q -> (q = FStar_Syntax_Syntax.Noeq)) quals)
in if ((((FStar_List.length tcs) = (Prims.parse_int "0")) || ((FStar_Ident.lid_equals env.FStar_TypeChecker_Env.curmodule FStar_Syntax_Const.prims_lid) && (skip_prims_type ()))) || is_noeq) then begin
(((sig_bndle)::[]), (data_ops_ses))
end else begin
(

let is_unopteq = (FStar_List.existsb (fun q -> (q = FStar_Syntax_Syntax.Unopteq)) quals)
in (

let ses = if is_unopteq then begin
(unoptimized_haseq_scheme ())
end else begin
(optimized_haseq_scheme ())
end
in (let _157_766 = (let _157_765 = (let _157_764 = (let _157_763 = (FStar_TypeChecker_Env.get_range env0)
in (((FStar_List.append tcs datas)), (quals), (lids), (_157_763)))
in FStar_Syntax_Syntax.Sig_bundle (_157_764))
in (_157_765)::ses)
in ((_157_766), (data_ops_ses)))))
end))))))))
end))
end))
end))))
end)))))))))
and tc_decl : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.sigelt  ->  (FStar_Syntax_Syntax.sigelt Prims.list * FStar_TypeChecker_Env.env * FStar_Syntax_Syntax.sigelt Prims.list) = (fun env se -> (

let env = (set_hint_correlator env se)
in (

let _60_1564 = (FStar_TypeChecker_Util.check_sigelt_quals env se)
in (match (se) with
| (FStar_Syntax_Syntax.Sig_inductive_typ (_)) | (FStar_Syntax_Syntax.Sig_datacon (_)) -> begin
(FStar_All.failwith "Impossible bare data-constructor")
end
| FStar_Syntax_Syntax.Sig_bundle (ses, quals, lids, r) when (FStar_All.pipe_right lids (FStar_Util.for_some (FStar_Ident.lid_equals FStar_Syntax_Const.lex_t_lid))) -> begin
(

let env = (FStar_TypeChecker_Env.set_range env r)
in (

let se = (tc_lex_t env ses quals lids)
in (let _157_769 = (FStar_TypeChecker_Env.push_sigelt env se)
in (((se)::[]), (_157_769), ([])))))
end
| FStar_Syntax_Syntax.Sig_bundle (ses, quals, lids, r) -> begin
(

let env = (FStar_TypeChecker_Env.set_range env r)
in (

let _60_1589 = (tc_inductive env ses quals lids)
in (match (_60_1589) with
| (ses, projectors_ses) -> begin
(

let env = (FStar_List.fold_left (fun env' se -> (FStar_TypeChecker_Env.push_sigelt env' se)) env ses)
in ((ses), (env), (projectors_ses)))
end)))
end
| FStar_Syntax_Syntax.Sig_pragma (p, r) -> begin
(

let set_options = (fun t s -> (match ((FStar_Options.set_options t s)) with
| FStar_Getopt.Success -> begin
()
end
| FStar_Getopt.Help -> begin
(Prims.raise (FStar_Syntax_Syntax.Error ((("Failed to process pragma: use \'fstar --help\' to see which options are available"), (r)))))
end
| FStar_Getopt.Error (s) -> begin
(Prims.raise (FStar_Syntax_Syntax.Error ((((Prims.strcat "Failed to process pragma: " s)), (r)))))
end))
in (match (p) with
| FStar_Syntax_Syntax.SetOptions (o) -> begin
(

let _60_1606 = (set_options FStar_Options.Set o)
in (((se)::[]), (env), ([])))
end
| FStar_Syntax_Syntax.ResetOptions (sopt) -> begin
(

let _60_1610 = (let _157_776 = (FStar_Options.restore_cmd_line_options false)
in (FStar_All.pipe_right _157_776 Prims.ignore))
in (

let _60_1615 = (match (sopt) with
| None -> begin
()
end
| Some (s) -> begin
(set_options FStar_Options.Reset s)
end)
in (

let _60_1617 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.refresh ())
in (((se)::[]), (env), ([])))))
end))
end
| FStar_Syntax_Syntax.Sig_new_effect_for_free (_60_1620) -> begin
(FStar_All.failwith "impossible")
end
| FStar_Syntax_Syntax.Sig_new_effect (ne, r) -> begin
(

let ne = (tc_eff_decl env ne)
in (

let se = FStar_Syntax_Syntax.Sig_new_effect (((ne), (r)))
in (

let env = (FStar_TypeChecker_Env.push_sigelt env se)
in (

let _60_1636 = (FStar_All.pipe_right ne.FStar_Syntax_Syntax.actions (FStar_List.fold_left (fun _60_1631 a -> (match (_60_1631) with
| (env, ses) -> begin
(

let se_let = (FStar_Syntax_Util.action_as_lb a)
in (let _157_779 = (FStar_TypeChecker_Env.push_sigelt env se_let)
in ((_157_779), ((se_let)::ses))))
end)) ((env), ((se)::[]))))
in (match (_60_1636) with
| (env, ses) -> begin
(((se)::[]), (env), ([]))
end)))))
end
| FStar_Syntax_Syntax.Sig_sub_effect (sub, r) -> begin
(

let ed_src = (FStar_TypeChecker_Env.get_effect_decl env sub.FStar_Syntax_Syntax.source)
in (

let ed_tgt = (FStar_TypeChecker_Env.get_effect_decl env sub.FStar_Syntax_Syntax.target)
in (

let _60_1645 = (let _157_780 = (FStar_TypeChecker_Env.lookup_effect_lid env sub.FStar_Syntax_Syntax.source)
in (monad_signature env sub.FStar_Syntax_Syntax.source _157_780))
in (match (_60_1645) with
| (a, wp_a_src) -> begin
(

let _60_1648 = (let _157_781 = (FStar_TypeChecker_Env.lookup_effect_lid env sub.FStar_Syntax_Syntax.target)
in (monad_signature env sub.FStar_Syntax_Syntax.target _157_781))
in (match (_60_1648) with
| (b, wp_b_tgt) -> begin
(

let wp_a_tgt = (let _157_785 = (let _157_784 = (let _157_783 = (let _157_782 = (FStar_Syntax_Syntax.bv_to_name a)
in ((b), (_157_782)))
in FStar_Syntax_Syntax.NT (_157_783))
in (_157_784)::[])
in (FStar_Syntax_Subst.subst _157_785 wp_b_tgt))
in (

let expected_k = (let _157_790 = (let _157_788 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_787 = (let _157_786 = (FStar_Syntax_Syntax.null_binder wp_a_src)
in (_157_786)::[])
in (_157_788)::_157_787))
in (let _157_789 = (FStar_Syntax_Syntax.mk_Total wp_a_tgt)
in (FStar_Syntax_Util.arrow _157_790 _157_789)))
in (

let repr_type = (fun eff_name a wp -> (

let no_reify = (fun l -> (let _157_802 = (let _157_801 = (let _157_800 = (FStar_Util.format1 "Effect %s cannot be reified" l.FStar_Ident.str)
in (let _157_799 = (FStar_TypeChecker_Env.get_range env)
in ((_157_800), (_157_799))))
in FStar_Syntax_Syntax.Error (_157_801))
in (Prims.raise _157_802)))
in (match ((FStar_TypeChecker_Env.effect_decl_opt env eff_name)) with
| None -> begin
(no_reify eff_name)
end
| Some (ed) -> begin
(

let repr = (FStar_TypeChecker_Env.inst_effect_fun_with ((FStar_Syntax_Syntax.U_unknown)::[]) env ed (([]), (ed.FStar_Syntax_Syntax.repr)))
in if (not ((FStar_All.pipe_right ed.FStar_Syntax_Syntax.qualifiers (FStar_List.contains FStar_Syntax_Syntax.Reifiable)))) then begin
(no_reify eff_name)
end else begin
(let _157_809 = (let _157_807 = (let _157_806 = (let _157_805 = (FStar_Syntax_Syntax.as_arg a)
in (let _157_804 = (let _157_803 = (FStar_Syntax_Syntax.as_arg wp)
in (_157_803)::[])
in (_157_805)::_157_804))
in ((repr), (_157_806)))
in FStar_Syntax_Syntax.Tm_app (_157_807))
in (let _157_808 = (FStar_TypeChecker_Env.get_range env)
in (FStar_Syntax_Syntax.mk _157_809 None _157_808)))
end)
end)))
in (

let _60_1689 = (match (((sub.FStar_Syntax_Syntax.lift), (sub.FStar_Syntax_Syntax.lift_wp))) with
| (None, None) -> begin
(FStar_All.failwith "Impossible")
end
| (lift, Some (_60_1666, lift_wp)) -> begin
(let _157_810 = (check_and_gen env lift_wp expected_k)
in ((lift), (_157_810)))
end
| (Some (what, lift), None) -> begin
(

let dmff_env = (FStar_TypeChecker_DMFF.empty env (FStar_TypeChecker_TcTerm.tc_constant FStar_Range.dummyRange))
in (

let _60_1682 = (FStar_TypeChecker_DMFF.star_expr dmff_env lift)
in (match (_60_1682) with
| (_60_1679, lift_wp, lift_elab) -> begin
(

let _60_1683 = (recheck_debug "lift-wp" env lift_wp)
in (

let _60_1685 = (recheck_debug "lift-elab" env lift_elab)
in ((Some ((([]), (lift_elab)))), ((([]), (lift_wp))))))
end)))
end)
in (match (_60_1689) with
| (lift, lift_wp) -> begin
(

let lax = env.FStar_TypeChecker_Env.lax
in (

let env = (

let _60_1691 = env
in {FStar_TypeChecker_Env.solver = _60_1691.FStar_TypeChecker_Env.solver; FStar_TypeChecker_Env.range = _60_1691.FStar_TypeChecker_Env.range; FStar_TypeChecker_Env.curmodule = _60_1691.FStar_TypeChecker_Env.curmodule; FStar_TypeChecker_Env.gamma = _60_1691.FStar_TypeChecker_Env.gamma; FStar_TypeChecker_Env.gamma_cache = _60_1691.FStar_TypeChecker_Env.gamma_cache; FStar_TypeChecker_Env.modules = _60_1691.FStar_TypeChecker_Env.modules; FStar_TypeChecker_Env.expected_typ = _60_1691.FStar_TypeChecker_Env.expected_typ; FStar_TypeChecker_Env.sigtab = _60_1691.FStar_TypeChecker_Env.sigtab; FStar_TypeChecker_Env.is_pattern = _60_1691.FStar_TypeChecker_Env.is_pattern; FStar_TypeChecker_Env.instantiate_imp = _60_1691.FStar_TypeChecker_Env.instantiate_imp; FStar_TypeChecker_Env.effects = _60_1691.FStar_TypeChecker_Env.effects; FStar_TypeChecker_Env.generalize = _60_1691.FStar_TypeChecker_Env.generalize; FStar_TypeChecker_Env.letrecs = _60_1691.FStar_TypeChecker_Env.letrecs; FStar_TypeChecker_Env.top_level = _60_1691.FStar_TypeChecker_Env.top_level; FStar_TypeChecker_Env.check_uvars = _60_1691.FStar_TypeChecker_Env.check_uvars; FStar_TypeChecker_Env.use_eq = _60_1691.FStar_TypeChecker_Env.use_eq; FStar_TypeChecker_Env.is_iface = _60_1691.FStar_TypeChecker_Env.is_iface; FStar_TypeChecker_Env.admit = _60_1691.FStar_TypeChecker_Env.admit; FStar_TypeChecker_Env.lax = true; FStar_TypeChecker_Env.lax_universes = _60_1691.FStar_TypeChecker_Env.lax_universes; FStar_TypeChecker_Env.type_of = _60_1691.FStar_TypeChecker_Env.type_of; FStar_TypeChecker_Env.universe_of = _60_1691.FStar_TypeChecker_Env.universe_of; FStar_TypeChecker_Env.use_bv_sorts = _60_1691.FStar_TypeChecker_Env.use_bv_sorts; FStar_TypeChecker_Env.qname_and_index = _60_1691.FStar_TypeChecker_Env.qname_and_index})
in (

let lift = (match (lift) with
| None -> begin
None
end
| Some (_60_1696, lift) -> begin
(

let _60_1702 = (let _157_811 = (FStar_TypeChecker_Env.lookup_effect_lid env sub.FStar_Syntax_Syntax.source)
in (monad_signature env sub.FStar_Syntax_Syntax.source _157_811))
in (match (_60_1702) with
| (a, wp_a_src) -> begin
(

let wp_a = (FStar_Syntax_Syntax.new_bv None wp_a_src)
in (

let a_typ = (FStar_Syntax_Syntax.bv_to_name a)
in (

let wp_a_typ = (FStar_Syntax_Syntax.bv_to_name wp_a)
in (

let repr_f = (repr_type sub.FStar_Syntax_Syntax.source a_typ wp_a_typ)
in (

let repr_result = (

let lift_wp = (FStar_TypeChecker_Normalize.normalize ((FStar_TypeChecker_Normalize.EraseUniverses)::(FStar_TypeChecker_Normalize.AllowUnboundUniverses)::[]) env (Prims.snd lift_wp))
in (

let lift_wp_a = (let _157_818 = (let _157_816 = (let _157_815 = (let _157_814 = (FStar_Syntax_Syntax.as_arg a_typ)
in (let _157_813 = (let _157_812 = (FStar_Syntax_Syntax.as_arg wp_a_typ)
in (_157_812)::[])
in (_157_814)::_157_813))
in ((lift_wp), (_157_815)))
in FStar_Syntax_Syntax.Tm_app (_157_816))
in (let _157_817 = (FStar_TypeChecker_Env.get_range env)
in (FStar_Syntax_Syntax.mk _157_818 None _157_817)))
in (repr_type sub.FStar_Syntax_Syntax.target a_typ lift_wp_a)))
in (

let expected_k = (let _157_825 = (let _157_823 = (FStar_Syntax_Syntax.mk_binder a)
in (let _157_822 = (let _157_821 = (FStar_Syntax_Syntax.mk_binder wp_a)
in (let _157_820 = (let _157_819 = (FStar_Syntax_Syntax.null_binder repr_f)
in (_157_819)::[])
in (_157_821)::_157_820))
in (_157_823)::_157_822))
in (let _157_824 = (FStar_Syntax_Syntax.mk_Total repr_result)
in (FStar_Syntax_Util.arrow _157_825 _157_824)))
in (

let _60_1716 = (FStar_TypeChecker_TcTerm.tc_tot_or_gtot_term env expected_k)
in (match (_60_1716) with
| (expected_k, _60_1713, _60_1715) -> begin
(

let lift = (check_and_gen env lift expected_k)
in Some (lift))
end))))))))
end))
end)
in (

let env = (

let _60_1719 = env
in {FStar_TypeChecker_Env.solver = _60_1719.FStar_TypeChecker_Env.solver; FStar_TypeChecker_Env.range = _60_1719.FStar_TypeChecker_Env.range; FStar_TypeChecker_Env.curmodule = _60_1719.FStar_TypeChecker_Env.curmodule; FStar_TypeChecker_Env.gamma = _60_1719.FStar_TypeChecker_Env.gamma; FStar_TypeChecker_Env.gamma_cache = _60_1719.FStar_TypeChecker_Env.gamma_cache; FStar_TypeChecker_Env.modules = _60_1719.FStar_TypeChecker_Env.modules; FStar_TypeChecker_Env.expected_typ = _60_1719.FStar_TypeChecker_Env.expected_typ; FStar_TypeChecker_Env.sigtab = _60_1719.FStar_TypeChecker_Env.sigtab; FStar_TypeChecker_Env.is_pattern = _60_1719.FStar_TypeChecker_Env.is_pattern; FStar_TypeChecker_Env.instantiate_imp = _60_1719.FStar_TypeChecker_Env.instantiate_imp; FStar_TypeChecker_Env.effects = _60_1719.FStar_TypeChecker_Env.effects; FStar_TypeChecker_Env.generalize = _60_1719.FStar_TypeChecker_Env.generalize; FStar_TypeChecker_Env.letrecs = _60_1719.FStar_TypeChecker_Env.letrecs; FStar_TypeChecker_Env.top_level = _60_1719.FStar_TypeChecker_Env.top_level; FStar_TypeChecker_Env.check_uvars = _60_1719.FStar_TypeChecker_Env.check_uvars; FStar_TypeChecker_Env.use_eq = _60_1719.FStar_TypeChecker_Env.use_eq; FStar_TypeChecker_Env.is_iface = _60_1719.FStar_TypeChecker_Env.is_iface; FStar_TypeChecker_Env.admit = _60_1719.FStar_TypeChecker_Env.admit; FStar_TypeChecker_Env.lax = lax; FStar_TypeChecker_Env.lax_universes = _60_1719.FStar_TypeChecker_Env.lax_universes; FStar_TypeChecker_Env.type_of = _60_1719.FStar_TypeChecker_Env.type_of; FStar_TypeChecker_Env.universe_of = _60_1719.FStar_TypeChecker_Env.universe_of; FStar_TypeChecker_Env.use_bv_sorts = _60_1719.FStar_TypeChecker_Env.use_bv_sorts; FStar_TypeChecker_Env.qname_and_index = _60_1719.FStar_TypeChecker_Env.qname_and_index})
in (

let sub = (

let _60_1722 = sub
in {FStar_Syntax_Syntax.source = _60_1722.FStar_Syntax_Syntax.source; FStar_Syntax_Syntax.target = _60_1722.FStar_Syntax_Syntax.target; FStar_Syntax_Syntax.lift_wp = Some (lift_wp); FStar_Syntax_Syntax.lift = lift})
in (

let se = FStar_Syntax_Syntax.Sig_sub_effect (((sub), (r)))
in (

let env = (FStar_TypeChecker_Env.push_sigelt env se)
in (((se)::[]), (env), ([])))))))))
end)))))
end))
end))))
end
| FStar_Syntax_Syntax.Sig_effect_abbrev (lid, uvs, tps, c, tags, flags, r) -> begin
(

let _60_1736 = ()
in (

let env0 = env
in (

let env = (FStar_TypeChecker_Env.set_range env r)
in (

let _60_1742 = (FStar_Syntax_Subst.open_comp tps c)
in (match (_60_1742) with
| (tps, c) -> begin
(

let _60_1746 = (tc_tparams env tps)
in (match (_60_1746) with
| (tps, env, us) -> begin
(

let _60_1750 = (FStar_TypeChecker_TcTerm.tc_comp env c)
in (match (_60_1750) with
| (c, u, g) -> begin
(

let _60_1751 = (FStar_TypeChecker_Rel.force_trivial_guard env g)
in (

let tps = (FStar_Syntax_Subst.close_binders tps)
in (

let c = (FStar_Syntax_Subst.close_comp tps c)
in (

let _60_1757 = (let _157_826 = (FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_arrow (((tps), (c)))) None r)
in (FStar_TypeChecker_Util.generalize_universes env0 _157_826))
in (match (_60_1757) with
| (uvs, t) -> begin
(

let _60_1776 = (match ((let _157_828 = (let _157_827 = (FStar_Syntax_Subst.compress t)
in _157_827.FStar_Syntax_Syntax.n)
in ((tps), (_157_828)))) with
| ([], FStar_Syntax_Syntax.Tm_arrow (_60_1760, c)) -> begin
(([]), (c))
end
| (_60_1766, FStar_Syntax_Syntax.Tm_arrow (tps, c)) -> begin
((tps), (c))
end
| _60_1773 -> begin
(FStar_All.failwith "Impossible")
end)
in (match (_60_1776) with
| (tps, c) -> begin
(

let _60_1781 = if (((FStar_List.length uvs) <> (Prims.parse_int "1")) && (not ((FStar_Ident.lid_equals lid FStar_Syntax_Const.effect_Lemma_lid)))) then begin
(

let _60_1780 = (FStar_Syntax_Subst.open_univ_vars uvs t)
in (match (_60_1780) with
| (_60_1778, t) -> begin
(let _157_834 = (let _157_833 = (let _157_832 = (let _157_831 = (FStar_Syntax_Print.lid_to_string lid)
in (let _157_830 = (FStar_All.pipe_right (FStar_List.length uvs) FStar_Util.string_of_int)
in (let _157_829 = (FStar_Syntax_Print.term_to_string t)
in (FStar_Util.format3 "Effect abbreviations must be polymorphic in exactly 1 universe; %s has %s universes (%s)" _157_831 _157_830 _157_829))))
in ((_157_832), (r)))
in FStar_Syntax_Syntax.Error (_157_833))
in (Prims.raise _157_834))
end))
end else begin
()
end
in (

let se = FStar_Syntax_Syntax.Sig_effect_abbrev (((lid), (uvs), (tps), (c), (tags), (flags), (r)))
in (

let env = (FStar_TypeChecker_Env.push_sigelt env0 se)
in (((se)::[]), (env), ([])))))
end))
end)))))
end))
end))
end)))))
end
| (FStar_Syntax_Syntax.Sig_declare_typ (_, _, _, quals, _)) | (FStar_Syntax_Syntax.Sig_let (_, _, _, quals)) when (FStar_All.pipe_right quals (FStar_Util.for_some (fun _60_8 -> (match (_60_8) with
| FStar_Syntax_Syntax.OnlyName -> begin
true
end
| _60_1807 -> begin
false
end)))) -> begin
(([]), (env), ([]))
end
| FStar_Syntax_Syntax.Sig_declare_typ (lid, uvs, t, quals, r) -> begin
(

let env = (FStar_TypeChecker_Env.set_range env r)
in (

let _60_1821 = if (uvs = []) then begin
(let _157_837 = (let _157_836 = (FStar_Syntax_Util.type_u ())
in (Prims.fst _157_836))
in (check_and_gen env t _157_837))
end else begin
(

let _60_1818 = (FStar_Syntax_Subst.open_univ_vars uvs t)
in (match (_60_1818) with
| (uvs, t) -> begin
(let _157_841 = (let _157_840 = (let _157_839 = (let _157_838 = (FStar_Syntax_Util.type_u ())
in (Prims.fst _157_838))
in (tc_check_trivial_guard env t _157_839))
in (FStar_All.pipe_left (FStar_Syntax_Subst.close_univ_vars uvs) _157_840))
in ((uvs), (_157_841)))
end))
end
in (match (_60_1821) with
| (uvs, t) -> begin
(

let se = FStar_Syntax_Syntax.Sig_declare_typ (((lid), (uvs), (t), (quals), (r)))
in (

let env = (FStar_TypeChecker_Env.push_sigelt env se)
in (((se)::[]), (env), ([]))))
end)))
end
| FStar_Syntax_Syntax.Sig_assume (lid, phi, quals, r) -> begin
(

let se = (tc_assume env lid phi quals r)
in (

let env = (FStar_TypeChecker_Env.push_sigelt env se)
in (((se)::[]), (env), ([]))))
end
| FStar_Syntax_Syntax.Sig_main (e, r) -> begin
(

let env = (FStar_TypeChecker_Env.set_range env r)
in (

let env = (FStar_TypeChecker_Env.set_expected_typ env FStar_TypeChecker_Common.t_unit)
in (

let _60_1841 = (FStar_TypeChecker_TcTerm.tc_term env e)
in (match (_60_1841) with
| (e, c, g1) -> begin
(

let _60_1846 = (let _157_845 = (let _157_842 = (FStar_Syntax_Util.ml_comp FStar_TypeChecker_Common.t_unit r)
in Some (_157_842))
in (let _157_844 = (let _157_843 = (c.FStar_Syntax_Syntax.comp ())
in ((e), (_157_843)))
in (FStar_TypeChecker_TcTerm.check_expected_effect env _157_845 _157_844)))
in (match (_60_1846) with
| (e, _60_1844, g) -> begin
(

let _60_1847 = (let _157_846 = (FStar_TypeChecker_Rel.conj_guard g1 g)
in (FStar_TypeChecker_Rel.force_trivial_guard env _157_846))
in (

let se = FStar_Syntax_Syntax.Sig_main (((e), (r)))
in (

let env = (FStar_TypeChecker_Env.push_sigelt env se)
in (((se)::[]), (env), ([])))))
end))
end))))
end
| FStar_Syntax_Syntax.Sig_let (lbs, r, lids, quals) -> begin
(

let env = (FStar_TypeChecker_Env.set_range env r)
in (

let check_quals_eq = (fun l qopt q -> (match (qopt) with
| None -> begin
Some (q)
end
| Some (q') -> begin
if (((FStar_List.length q) = (FStar_List.length q')) && (FStar_List.forall2 FStar_Syntax_Util.qualifier_equal q q')) then begin
Some (q)
end else begin
(let _157_858 = (let _157_857 = (let _157_856 = (let _157_855 = (FStar_Syntax_Print.lid_to_string l)
in (let _157_854 = (FStar_Syntax_Print.quals_to_string q)
in (let _157_853 = (FStar_Syntax_Print.quals_to_string q')
in (FStar_Util.format3 "Inconsistent qualifier annotations on %s; Expected {%s}, got {%s}" _157_855 _157_854 _157_853))))
in ((_157_856), (r)))
in FStar_Syntax_Syntax.Error (_157_857))
in (Prims.raise _157_858))
end
end))
in (

let _60_1893 = (FStar_All.pipe_right (Prims.snd lbs) (FStar_List.fold_left (fun _60_1868 lb -> (match (_60_1868) with
| (gen, lbs, quals_opt) -> begin
(

let lbname = (FStar_Util.right lb.FStar_Syntax_Syntax.lbname)
in (

let _60_1889 = (match ((FStar_TypeChecker_Env.try_lookup_val_decl env lbname.FStar_Syntax_Syntax.fv_name.FStar_Syntax_Syntax.v)) with
| None -> begin
if (lb.FStar_Syntax_Syntax.lbunivs <> []) then begin
((false), (lb), (quals_opt))
end else begin
((gen), (lb), (quals_opt))
end
end
| Some ((uvs, tval), quals) -> begin
(

let quals_opt = (check_quals_eq lbname.FStar_Syntax_Syntax.fv_name.FStar_Syntax_Syntax.v quals_opt quals)
in (

let _60_1882 = (match (lb.FStar_Syntax_Syntax.lbtyp.FStar_Syntax_Syntax.n) with
| FStar_Syntax_Syntax.Tm_unknown -> begin
()
end
| _60_1881 -> begin
(FStar_TypeChecker_Errors.warn r "Annotation from val declaration overrides inline type annotation")
end)
in (

let _60_1884 = if ((lb.FStar_Syntax_Syntax.lbunivs <> []) && ((FStar_List.length lb.FStar_Syntax_Syntax.lbunivs) <> (FStar_List.length uvs))) then begin
(Prims.raise (FStar_Syntax_Syntax.Error ((("Inline universes are incoherent with annotation from val declaration"), (r)))))
end else begin
()
end
in (let _157_861 = (FStar_Syntax_Syntax.mk_lb ((FStar_Util.Inr (lbname)), (uvs), (FStar_Syntax_Const.effect_ALL_lid), (tval), (lb.FStar_Syntax_Syntax.lbdef)))
in ((false), (_157_861), (quals_opt))))))
end)
in (match (_60_1889) with
| (gen, lb, quals_opt) -> begin
((gen), ((lb)::lbs), (quals_opt))
end)))
end)) ((true), ([]), (if (quals = []) then begin
None
end else begin
Some (quals)
end))))
in (match (_60_1893) with
| (should_generalize, lbs', quals_opt) -> begin
(

let quals = (match (quals_opt) with
| None -> begin
(FStar_Syntax_Syntax.Visible_default)::[]
end
| Some (q) -> begin
if (FStar_All.pipe_right q (FStar_Util.for_some (fun _60_9 -> (match (_60_9) with
| (FStar_Syntax_Syntax.Irreducible) | (FStar_Syntax_Syntax.Visible_default) | (FStar_Syntax_Syntax.Unfold_for_unification_and_vcgen) -> begin
true
end
| _60_1902 -> begin
false
end)))) then begin
q
end else begin
(FStar_Syntax_Syntax.Visible_default)::q
end
end)
in (

let lbs' = (FStar_List.rev lbs')
in (

let e = (let _157_865 = (let _157_864 = (let _157_863 = (FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_unit)) None r)
in (((((Prims.fst lbs)), (lbs'))), (_157_863)))
in FStar_Syntax_Syntax.Tm_let (_157_864))
in (FStar_Syntax_Syntax.mk _157_865 None r))
in (

let _60_1936 = (match ((FStar_TypeChecker_TcTerm.tc_maybe_toplevel_term (

let _60_1906 = env
in {FStar_TypeChecker_Env.solver = _60_1906.FStar_TypeChecker_Env.solver; FStar_TypeChecker_Env.range = _60_1906.FStar_TypeChecker_Env.range; FStar_TypeChecker_Env.curmodule = _60_1906.FStar_TypeChecker_Env.curmodule; FStar_TypeChecker_Env.gamma = _60_1906.FStar_TypeChecker_Env.gamma; FStar_TypeChecker_Env.gamma_cache = _60_1906.FStar_TypeChecker_Env.gamma_cache; FStar_TypeChecker_Env.modules = _60_1906.FStar_TypeChecker_Env.modules; FStar_TypeChecker_Env.expected_typ = _60_1906.FStar_TypeChecker_Env.expected_typ; FStar_TypeChecker_Env.sigtab = _60_1906.FStar_TypeChecker_Env.sigtab; FStar_TypeChecker_Env.is_pattern = _60_1906.FStar_TypeChecker_Env.is_pattern; FStar_TypeChecker_Env.instantiate_imp = _60_1906.FStar_TypeChecker_Env.instantiate_imp; FStar_TypeChecker_Env.effects = _60_1906.FStar_TypeChecker_Env.effects; FStar_TypeChecker_Env.generalize = should_generalize; FStar_TypeChecker_Env.letrecs = _60_1906.FStar_TypeChecker_Env.letrecs; FStar_TypeChecker_Env.top_level = true; FStar_TypeChecker_Env.check_uvars = _60_1906.FStar_TypeChecker_Env.check_uvars; FStar_TypeChecker_Env.use_eq = _60_1906.FStar_TypeChecker_Env.use_eq; FStar_TypeChecker_Env.is_iface = _60_1906.FStar_TypeChecker_Env.is_iface; FStar_TypeChecker_Env.admit = _60_1906.FStar_TypeChecker_Env.admit; FStar_TypeChecker_Env.lax = _60_1906.FStar_TypeChecker_Env.lax; FStar_TypeChecker_Env.lax_universes = _60_1906.FStar_TypeChecker_Env.lax_universes; FStar_TypeChecker_Env.type_of = _60_1906.FStar_TypeChecker_Env.type_of; FStar_TypeChecker_Env.universe_of = _60_1906.FStar_TypeChecker_Env.universe_of; FStar_TypeChecker_Env.use_bv_sorts = _60_1906.FStar_TypeChecker_Env.use_bv_sorts; FStar_TypeChecker_Env.qname_and_index = _60_1906.FStar_TypeChecker_Env.qname_and_index}) e)) with
| ({FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_let (lbs, e); FStar_Syntax_Syntax.tk = _60_1913; FStar_Syntax_Syntax.pos = _60_1911; FStar_Syntax_Syntax.vars = _60_1909}, _60_1920, g) when (FStar_TypeChecker_Rel.is_trivial g) -> begin
(

let quals = (match (e.FStar_Syntax_Syntax.n) with
| FStar_Syntax_Syntax.Tm_meta (_60_1924, FStar_Syntax_Syntax.Meta_desugared (FStar_Syntax_Syntax.Masked_effect)) -> begin
(FStar_Syntax_Syntax.HasMaskedEffect)::quals
end
| _60_1930 -> begin
quals
end)
in ((FStar_Syntax_Syntax.Sig_let (((lbs), (r), (lids), (quals)))), (lbs)))
end
| _60_1933 -> begin
(FStar_All.failwith "impossible")
end)
in (match (_60_1936) with
| (se, lbs) -> begin
(

let _60_1942 = if (log env) then begin
(let _157_873 = (let _157_872 = (FStar_All.pipe_right (Prims.snd lbs) (FStar_List.map (fun lb -> (

let should_log = (match ((let _157_869 = (let _157_868 = (let _157_867 = (FStar_Util.right lb.FStar_Syntax_Syntax.lbname)
in _157_867.FStar_Syntax_Syntax.fv_name)
in _157_868.FStar_Syntax_Syntax.v)
in (FStar_TypeChecker_Env.try_lookup_val_decl env _157_869))) with
| None -> begin
true
end
| _60_1940 -> begin
false
end)
in if should_log then begin
(let _157_871 = (FStar_Syntax_Print.lbname_to_string lb.FStar_Syntax_Syntax.lbname)
in (let _157_870 = (FStar_Syntax_Print.term_to_string lb.FStar_Syntax_Syntax.lbtyp)
in (FStar_Util.format2 "let %s : %s" _157_871 _157_870)))
end else begin
""
end))))
in (FStar_All.pipe_right _157_872 (FStar_String.concat "\n")))
in (FStar_Util.print1 "%s\n" _157_873))
end else begin
()
end
in (

let env = (FStar_TypeChecker_Env.push_sigelt env se)
in (((se)::[]), (env), ([]))))
end)))))
end))))
end))))


let for_export : FStar_Ident.lident Prims.list  ->  FStar_Syntax_Syntax.sigelt  ->  (FStar_Syntax_Syntax.sigelt Prims.list * FStar_Ident.lident Prims.list) = (fun hidden se -> (

let is_abstract = (fun quals -> (FStar_All.pipe_right quals (FStar_Util.for_some (fun _60_10 -> (match (_60_10) with
| FStar_Syntax_Syntax.Abstract -> begin
true
end
| _60_1952 -> begin
false
end)))))
in (

let is_hidden_proj_or_disc = (fun q -> (match (q) with
| (FStar_Syntax_Syntax.Projector (l, _)) | (FStar_Syntax_Syntax.Discriminator (l)) -> begin
(FStar_All.pipe_right hidden (FStar_Util.for_some (FStar_Ident.lid_equals l)))
end
| _60_1962 -> begin
false
end))
in (match (se) with
| FStar_Syntax_Syntax.Sig_pragma (_60_1964) -> begin
(([]), (hidden))
end
| (FStar_Syntax_Syntax.Sig_inductive_typ (_)) | (FStar_Syntax_Syntax.Sig_datacon (_)) -> begin
(FStar_All.failwith "Impossible")
end
| FStar_Syntax_Syntax.Sig_bundle (ses, quals, _60_1975, r) -> begin
if (is_abstract quals) then begin
(FStar_List.fold_right (fun se _60_1982 -> (match (_60_1982) with
| (out, hidden) -> begin
(match (se) with
| FStar_Syntax_Syntax.Sig_inductive_typ (l, us, bs, t, _60_1988, _60_1990, quals, r) -> begin
(

let dec = (let _157_887 = (let _157_886 = (let _157_885 = (FStar_Syntax_Syntax.mk_Total t)
in (FStar_Syntax_Util.arrow bs _157_885))
in ((l), (us), (_157_886), ((FStar_Syntax_Syntax.Assumption)::(FStar_Syntax_Syntax.New)::quals), (r)))
in FStar_Syntax_Syntax.Sig_declare_typ (_157_887))
in (((dec)::out), (hidden)))
end
| FStar_Syntax_Syntax.Sig_datacon (l, us, t, _60_2000, _60_2002, _60_2004, _60_2006, r) -> begin
(

let dec = FStar_Syntax_Syntax.Sig_declare_typ (((l), (us), (t), ((FStar_Syntax_Syntax.Assumption)::[]), (r)))
in (((dec)::out), ((l)::hidden)))
end
| _60_2012 -> begin
((out), (hidden))
end)
end)) ses (([]), (hidden)))
end else begin
(((se)::[]), (hidden))
end
end
| FStar_Syntax_Syntax.Sig_assume (_60_2014, _60_2016, quals, _60_2019) -> begin
if (is_abstract quals) then begin
(([]), (hidden))
end else begin
(((se)::[]), (hidden))
end
end
| FStar_Syntax_Syntax.Sig_declare_typ (l, us, t, quals, r) -> begin
if (FStar_All.pipe_right quals (FStar_Util.for_some is_hidden_proj_or_disc)) then begin
(((FStar_Syntax_Syntax.Sig_declare_typ (((l), (us), (t), ((FStar_Syntax_Syntax.Assumption)::[]), (r))))::[]), ((l)::hidden))
end else begin
if (FStar_All.pipe_right quals (FStar_Util.for_some (fun _60_11 -> (match (_60_11) with
| (FStar_Syntax_Syntax.Assumption) | (FStar_Syntax_Syntax.Projector (_)) | (FStar_Syntax_Syntax.Discriminator (_)) -> begin
true
end
| _60_2038 -> begin
false
end)))) then begin
(((se)::[]), (hidden))
end else begin
(([]), (hidden))
end
end
end
| FStar_Syntax_Syntax.Sig_main (_60_2040) -> begin
(([]), (hidden))
end
| (FStar_Syntax_Syntax.Sig_new_effect (_)) | (FStar_Syntax_Syntax.Sig_new_effect_for_free (_)) | (FStar_Syntax_Syntax.Sig_sub_effect (_)) | (FStar_Syntax_Syntax.Sig_effect_abbrev (_)) -> begin
(((se)::[]), (hidden))
end
| FStar_Syntax_Syntax.Sig_let ((false, (lb)::[]), _60_2059, _60_2061, quals) when (FStar_All.pipe_right quals (FStar_Util.for_some is_hidden_proj_or_disc)) -> begin
(

let fv = (FStar_Util.right lb.FStar_Syntax_Syntax.lbname)
in (

let lid = fv.FStar_Syntax_Syntax.fv_name.FStar_Syntax_Syntax.v
in if (FStar_All.pipe_right hidden (FStar_Util.for_some (FStar_Syntax_Syntax.fv_eq_lid fv))) then begin
(([]), (hidden))
end else begin
(

let dec = FStar_Syntax_Syntax.Sig_declare_typ (((fv.FStar_Syntax_Syntax.fv_name.FStar_Syntax_Syntax.v), (lb.FStar_Syntax_Syntax.lbunivs), (lb.FStar_Syntax_Syntax.lbtyp), ((FStar_Syntax_Syntax.Assumption)::[]), ((FStar_Ident.range_of_lid lid))))
in (((dec)::[]), ((lid)::hidden)))
end))
end
| FStar_Syntax_Syntax.Sig_let (lbs, r, l, quals) -> begin
if (is_abstract quals) then begin
(let _157_894 = (FStar_All.pipe_right (Prims.snd lbs) (FStar_List.map (fun lb -> (let _157_893 = (let _157_892 = (let _157_891 = (let _157_890 = (FStar_Util.right lb.FStar_Syntax_Syntax.lbname)
in _157_890.FStar_Syntax_Syntax.fv_name)
in _157_891.FStar_Syntax_Syntax.v)
in ((_157_892), (lb.FStar_Syntax_Syntax.lbunivs), (lb.FStar_Syntax_Syntax.lbtyp), ((FStar_Syntax_Syntax.Assumption)::quals), (r)))
in FStar_Syntax_Syntax.Sig_declare_typ (_157_893)))))
in ((_157_894), (hidden)))
end else begin
(((se)::[]), (hidden))
end
end))))


let tc_decls : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.sigelt Prims.list  ->  (FStar_Syntax_Syntax.sigelt Prims.list * FStar_Syntax_Syntax.sigelt Prims.list * FStar_TypeChecker_Env.env) = (fun env ses -> (

let rec process_one_decl = (fun _60_2082 se -> (match (_60_2082) with
| (ses, exports, env, hidden) -> begin
(

let _60_2084 = if (FStar_TypeChecker_Env.debug env FStar_Options.Low) then begin
(let _157_903 = (FStar_Syntax_Print.sigelt_to_string se)
in (FStar_Util.print1 ">>>>>>>>>>>>>>Checking top-level decl %s\n" _157_903))
end else begin
()
end
in (

let _60_2089 = (tc_decl env se)
in (match (_60_2089) with
| (ses', env, ses_elaborated) -> begin
(

let _60_2092 = if ((FStar_Options.log_types ()) || (FStar_All.pipe_left (FStar_TypeChecker_Env.debug env) (FStar_Options.Other ("LogTypes")))) then begin
(let _157_908 = (FStar_List.fold_left (fun s se -> (let _157_907 = (let _157_906 = (FStar_Syntax_Print.sigelt_to_string se)
in (Prims.strcat _157_906 "\n"))
in (Prims.strcat s _157_907))) "" ses')
in (FStar_Util.print1 "Checked: %s\n" _157_908))
end else begin
()
end
in (

let _60_2095 = (FStar_List.iter (fun se -> (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.encode_sig env se)) ses')
in (

let _60_2104 = (FStar_List.fold_left (fun _60_2099 se -> (match (_60_2099) with
| (le, lh) -> begin
(

let tup = (for_export hidden se)
in (((FStar_List.rev_append (Prims.fst tup) le)), ((FStar_List.rev_append (Prims.snd tup) lh))))
end)) (([]), ([])) ses')
in (match (_60_2104) with
| (exported, hidden) -> begin
(FStar_List.fold_left process_one_decl (((FStar_List.rev_append ses' ses)), (((FStar_List.rev_append exported []))::exports), (env), (hidden)) ses_elaborated)
end))))
end)))
end))
in (

let _60_2134 = (FStar_List.fold_left (fun acc se -> (match (se) with
| FStar_Syntax_Syntax.Sig_new_effect_for_free (ne, r) -> begin
(

let _60_2118 = acc
in (match (_60_2118) with
| (_60_2112, _60_2114, env, _60_2117) -> begin
(

let _60_2122 = (cps_and_elaborate env ne)
in (match (_60_2122) with
| (ses, ne, lift_from_pure_opt) -> begin
(

let ses = (match (lift_from_pure_opt) with
| Some (lift) -> begin
(FStar_List.append ses ((FStar_Syntax_Syntax.Sig_new_effect (((ne), (r))))::(lift)::[]))
end
| None -> begin
(FStar_List.append ses ((FStar_Syntax_Syntax.Sig_new_effect (((ne), (r))))::[]))
end)
in (FStar_List.fold_left process_one_decl acc ses))
end))
end))
end
| _60_2128 -> begin
(process_one_decl acc se)
end)) (([]), ([]), (env), ([])) ses)
in (match (_60_2134) with
| (ses, exports, env, _60_2133) -> begin
(let _157_914 = (FStar_All.pipe_right (FStar_List.rev_append exports []) FStar_List.flatten)
in (((FStar_List.rev_append ses [])), (_157_914), (env)))
end))))


let tc_partial_modul : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.modul  ->  (FStar_Syntax_Syntax.modul * FStar_Syntax_Syntax.sigelt Prims.list * FStar_TypeChecker_Env.env) = (fun env modul -> (

let name = (FStar_Util.format2 "%s %s" (if modul.FStar_Syntax_Syntax.is_interface then begin
"interface"
end else begin
"module"
end) modul.FStar_Syntax_Syntax.name.FStar_Ident.str)
in (

let msg = (Prims.strcat "Internals for " name)
in (

let env = (

let _60_2139 = env
in (let _157_919 = (not ((FStar_Options.should_verify modul.FStar_Syntax_Syntax.name.FStar_Ident.str)))
in {FStar_TypeChecker_Env.solver = _60_2139.FStar_TypeChecker_Env.solver; FStar_TypeChecker_Env.range = _60_2139.FStar_TypeChecker_Env.range; FStar_TypeChecker_Env.curmodule = _60_2139.FStar_TypeChecker_Env.curmodule; FStar_TypeChecker_Env.gamma = _60_2139.FStar_TypeChecker_Env.gamma; FStar_TypeChecker_Env.gamma_cache = _60_2139.FStar_TypeChecker_Env.gamma_cache; FStar_TypeChecker_Env.modules = _60_2139.FStar_TypeChecker_Env.modules; FStar_TypeChecker_Env.expected_typ = _60_2139.FStar_TypeChecker_Env.expected_typ; FStar_TypeChecker_Env.sigtab = _60_2139.FStar_TypeChecker_Env.sigtab; FStar_TypeChecker_Env.is_pattern = _60_2139.FStar_TypeChecker_Env.is_pattern; FStar_TypeChecker_Env.instantiate_imp = _60_2139.FStar_TypeChecker_Env.instantiate_imp; FStar_TypeChecker_Env.effects = _60_2139.FStar_TypeChecker_Env.effects; FStar_TypeChecker_Env.generalize = _60_2139.FStar_TypeChecker_Env.generalize; FStar_TypeChecker_Env.letrecs = _60_2139.FStar_TypeChecker_Env.letrecs; FStar_TypeChecker_Env.top_level = _60_2139.FStar_TypeChecker_Env.top_level; FStar_TypeChecker_Env.check_uvars = _60_2139.FStar_TypeChecker_Env.check_uvars; FStar_TypeChecker_Env.use_eq = _60_2139.FStar_TypeChecker_Env.use_eq; FStar_TypeChecker_Env.is_iface = modul.FStar_Syntax_Syntax.is_interface; FStar_TypeChecker_Env.admit = _157_919; FStar_TypeChecker_Env.lax = _60_2139.FStar_TypeChecker_Env.lax; FStar_TypeChecker_Env.lax_universes = _60_2139.FStar_TypeChecker_Env.lax_universes; FStar_TypeChecker_Env.type_of = _60_2139.FStar_TypeChecker_Env.type_of; FStar_TypeChecker_Env.universe_of = _60_2139.FStar_TypeChecker_Env.universe_of; FStar_TypeChecker_Env.use_bv_sorts = _60_2139.FStar_TypeChecker_Env.use_bv_sorts; FStar_TypeChecker_Env.qname_and_index = _60_2139.FStar_TypeChecker_Env.qname_and_index}))
in (

let _60_2142 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.push msg)
in (

let env = (FStar_TypeChecker_Env.set_current_module env modul.FStar_Syntax_Syntax.name)
in (

let _60_2148 = (tc_decls env modul.FStar_Syntax_Syntax.declarations)
in (match (_60_2148) with
| (ses, exports, env) -> begin
(((

let _60_2149 = modul
in {FStar_Syntax_Syntax.name = _60_2149.FStar_Syntax_Syntax.name; FStar_Syntax_Syntax.declarations = ses; FStar_Syntax_Syntax.exports = _60_2149.FStar_Syntax_Syntax.exports; FStar_Syntax_Syntax.is_interface = _60_2149.FStar_Syntax_Syntax.is_interface})), (exports), (env))
end))))))))


let tc_more_partial_modul : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.modul  ->  FStar_Syntax_Syntax.sigelt Prims.list  ->  (FStar_Syntax_Syntax.modul * FStar_Syntax_Syntax.sigelt Prims.list * FStar_TypeChecker_Env.env) = (fun env modul decls -> (

let _60_2157 = (tc_decls env decls)
in (match (_60_2157) with
| (ses, exports, env) -> begin
(

let modul = (

let _60_2158 = modul
in {FStar_Syntax_Syntax.name = _60_2158.FStar_Syntax_Syntax.name; FStar_Syntax_Syntax.declarations = (FStar_List.append modul.FStar_Syntax_Syntax.declarations ses); FStar_Syntax_Syntax.exports = _60_2158.FStar_Syntax_Syntax.exports; FStar_Syntax_Syntax.is_interface = _60_2158.FStar_Syntax_Syntax.is_interface})
in ((modul), (exports), (env)))
end)))


let check_exports : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.modul  ->  FStar_Syntax_Syntax.sigelt Prims.list  ->  Prims.unit = (fun env modul exports -> (

let env = (

let _60_2164 = env
in {FStar_TypeChecker_Env.solver = _60_2164.FStar_TypeChecker_Env.solver; FStar_TypeChecker_Env.range = _60_2164.FStar_TypeChecker_Env.range; FStar_TypeChecker_Env.curmodule = _60_2164.FStar_TypeChecker_Env.curmodule; FStar_TypeChecker_Env.gamma = _60_2164.FStar_TypeChecker_Env.gamma; FStar_TypeChecker_Env.gamma_cache = _60_2164.FStar_TypeChecker_Env.gamma_cache; FStar_TypeChecker_Env.modules = _60_2164.FStar_TypeChecker_Env.modules; FStar_TypeChecker_Env.expected_typ = _60_2164.FStar_TypeChecker_Env.expected_typ; FStar_TypeChecker_Env.sigtab = _60_2164.FStar_TypeChecker_Env.sigtab; FStar_TypeChecker_Env.is_pattern = _60_2164.FStar_TypeChecker_Env.is_pattern; FStar_TypeChecker_Env.instantiate_imp = _60_2164.FStar_TypeChecker_Env.instantiate_imp; FStar_TypeChecker_Env.effects = _60_2164.FStar_TypeChecker_Env.effects; FStar_TypeChecker_Env.generalize = _60_2164.FStar_TypeChecker_Env.generalize; FStar_TypeChecker_Env.letrecs = _60_2164.FStar_TypeChecker_Env.letrecs; FStar_TypeChecker_Env.top_level = true; FStar_TypeChecker_Env.check_uvars = _60_2164.FStar_TypeChecker_Env.check_uvars; FStar_TypeChecker_Env.use_eq = _60_2164.FStar_TypeChecker_Env.use_eq; FStar_TypeChecker_Env.is_iface = _60_2164.FStar_TypeChecker_Env.is_iface; FStar_TypeChecker_Env.admit = _60_2164.FStar_TypeChecker_Env.admit; FStar_TypeChecker_Env.lax = true; FStar_TypeChecker_Env.lax_universes = true; FStar_TypeChecker_Env.type_of = _60_2164.FStar_TypeChecker_Env.type_of; FStar_TypeChecker_Env.universe_of = _60_2164.FStar_TypeChecker_Env.universe_of; FStar_TypeChecker_Env.use_bv_sorts = _60_2164.FStar_TypeChecker_Env.use_bv_sorts; FStar_TypeChecker_Env.qname_and_index = _60_2164.FStar_TypeChecker_Env.qname_and_index})
in (

let check_term = (fun lid univs t -> (

let _60_2173 = (FStar_Syntax_Subst.open_univ_vars univs t)
in (match (_60_2173) with
| (univs, t) -> begin
(

let _60_2175 = if (let _157_939 = (let _157_938 = (FStar_TypeChecker_Env.set_current_module env modul.FStar_Syntax_Syntax.name)
in (FStar_TypeChecker_Env.debug _157_938))
in (FStar_All.pipe_left _157_939 (FStar_Options.Other ("Exports")))) then begin
(let _157_944 = (FStar_Syntax_Print.lid_to_string lid)
in (let _157_943 = (let _157_941 = (FStar_All.pipe_right univs (FStar_List.map (fun x -> (FStar_Syntax_Print.univ_to_string (FStar_Syntax_Syntax.U_name (x))))))
in (FStar_All.pipe_right _157_941 (FStar_String.concat ", ")))
in (let _157_942 = (FStar_Syntax_Print.term_to_string t)
in (FStar_Util.print3 "Checking for export %s <%s> : %s\n" _157_944 _157_943 _157_942))))
end else begin
()
end
in (

let env = (FStar_TypeChecker_Env.push_univ_vars env univs)
in (let _157_945 = (FStar_TypeChecker_TcTerm.tc_trivial_guard env t)
in (FStar_All.pipe_right _157_945 Prims.ignore))))
end)))
in (

let check_term = (fun lid univs t -> (

let _60_2182 = (let _157_954 = (let _157_953 = (FStar_Syntax_Print.lid_to_string modul.FStar_Syntax_Syntax.name)
in (let _157_952 = (FStar_Syntax_Print.lid_to_string lid)
in (FStar_Util.format2 "Interface of %s violates its abstraction (add a \'private\' qualifier to \'%s\'?)" _157_953 _157_952)))
in (FStar_TypeChecker_Errors.message_prefix.FStar_TypeChecker_Errors.set_prefix _157_954))
in (

let _60_2184 = (check_term lid univs t)
in (FStar_TypeChecker_Errors.message_prefix.FStar_TypeChecker_Errors.clear_prefix ()))))
in (

let rec check_sigelt = (fun _60_12 -> (match (_60_12) with
| FStar_Syntax_Syntax.Sig_bundle (ses, quals, _60_2191, _60_2193) -> begin
if (not ((FStar_All.pipe_right quals (FStar_List.contains FStar_Syntax_Syntax.Private)))) then begin
(FStar_All.pipe_right ses (FStar_List.iter check_sigelt))
end else begin
()
end
end
| FStar_Syntax_Syntax.Sig_inductive_typ (l, univs, binders, typ, _60_2201, _60_2203, _60_2205, r) -> begin
(

let t = (let _157_959 = (let _157_958 = (let _157_957 = (FStar_Syntax_Syntax.mk_Total typ)
in ((binders), (_157_957)))
in FStar_Syntax_Syntax.Tm_arrow (_157_958))
in (FStar_Syntax_Syntax.mk _157_959 None r))
in (check_term l univs t))
end
| FStar_Syntax_Syntax.Sig_datacon (l, univs, t, _60_2214, _60_2216, _60_2218, _60_2220, _60_2222) -> begin
(check_term l univs t)
end
| FStar_Syntax_Syntax.Sig_declare_typ (l, univs, t, quals, _60_2230) -> begin
if (not ((FStar_All.pipe_right quals (FStar_List.contains FStar_Syntax_Syntax.Private)))) then begin
(check_term l univs t)
end else begin
()
end
end
| FStar_Syntax_Syntax.Sig_let ((_60_2234, lbs), _60_2238, _60_2240, quals) -> begin
if (not ((FStar_All.pipe_right quals (FStar_List.contains FStar_Syntax_Syntax.Private)))) then begin
(FStar_All.pipe_right lbs (FStar_List.iter (fun lb -> (

let fv = (FStar_Util.right lb.FStar_Syntax_Syntax.lbname)
in (check_term fv.FStar_Syntax_Syntax.fv_name.FStar_Syntax_Syntax.v lb.FStar_Syntax_Syntax.lbunivs lb.FStar_Syntax_Syntax.lbtyp)))))
end else begin
()
end
end
| FStar_Syntax_Syntax.Sig_effect_abbrev (l, univs, binders, comp, quals, flags, r) -> begin
if (not ((FStar_All.pipe_right quals (FStar_List.contains FStar_Syntax_Syntax.Private)))) then begin
(

let arrow = (FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_arrow (((binders), (comp)))) None r)
in (check_term l univs arrow))
end else begin
()
end
end
| (FStar_Syntax_Syntax.Sig_main (_)) | (FStar_Syntax_Syntax.Sig_assume (_)) | (FStar_Syntax_Syntax.Sig_new_effect (_)) | (FStar_Syntax_Syntax.Sig_new_effect_for_free (_)) | (FStar_Syntax_Syntax.Sig_sub_effect (_)) | (FStar_Syntax_Syntax.Sig_pragma (_)) -> begin
()
end))
in if (FStar_Ident.lid_equals modul.FStar_Syntax_Syntax.name FStar_Syntax_Const.prims_lid) then begin
()
end else begin
(FStar_List.iter check_sigelt exports)
end)))))


let finish_partial_modul : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.modul  ->  FStar_Syntax_Syntax.sigelts  ->  (FStar_Syntax_Syntax.modul * FStar_TypeChecker_Env.env) = (fun env modul exports -> (

let modul = (

let _60_2277 = modul
in {FStar_Syntax_Syntax.name = _60_2277.FStar_Syntax_Syntax.name; FStar_Syntax_Syntax.declarations = _60_2277.FStar_Syntax_Syntax.declarations; FStar_Syntax_Syntax.exports = exports; FStar_Syntax_Syntax.is_interface = modul.FStar_Syntax_Syntax.is_interface})
in (

let env = (FStar_TypeChecker_Env.finish_module env modul)
in (

let _60_2281 = (check_exports env modul exports)
in (

let _60_2283 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.pop (Prims.strcat "Ending modul " modul.FStar_Syntax_Syntax.name.FStar_Ident.str))
in (

let _60_2285 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.encode_modul env modul)
in (

let _60_2287 = (env.FStar_TypeChecker_Env.solver.FStar_TypeChecker_Env.refresh ())
in (

let _60_2289 = (let _157_967 = (FStar_Options.restore_cmd_line_options true)
in (FStar_All.pipe_right _157_967 Prims.ignore))
in ((modul), (env))))))))))


let tc_modul : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.modul  ->  (FStar_Syntax_Syntax.modul * FStar_TypeChecker_Env.env) = (fun env modul -> (

let _60_2296 = (tc_partial_modul env modul)
in (match (_60_2296) with
| (modul, non_private_decls, env) -> begin
(finish_partial_modul env modul non_private_decls)
end)))


let check_module : FStar_TypeChecker_Env.env  ->  FStar_Syntax_Syntax.modul  ->  (FStar_Syntax_Syntax.modul * FStar_TypeChecker_Env.env) = (fun env m -> (

let _60_2299 = if (FStar_Options.debug_any ()) then begin
(let _157_976 = (FStar_Syntax_Print.lid_to_string m.FStar_Syntax_Syntax.name)
in (FStar_Util.print2 "Checking %s: %s\n" (if m.FStar_Syntax_Syntax.is_interface then begin
"i\'face"
end else begin
"module"
end) _157_976))
end else begin
()
end
in (

let _60_2303 = (tc_modul env m)
in (match (_60_2303) with
| (m, env) -> begin
(

let _60_2304 = if (FStar_Options.dump_module m.FStar_Syntax_Syntax.name.FStar_Ident.str) then begin
(let _157_977 = (FStar_Syntax_Print.modul_to_string m)
in (FStar_Util.print1 "%s\n" _157_977))
end else begin
()
end
in ((m), (env)))
end))))




